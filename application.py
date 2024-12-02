from flask import Flask, request, jsonify
from ctypes import WinDLL, c_ubyte, c_int, create_string_buffer

# Initialize Flask app
app = Flask(__name__)

# Load the DLL
dll_path = "/home/ubuntu/pyth/proRFL.dll"

try:
    dll = WinDLL(dll_path)
    print("DLL loaded successfully.")
except Exception as e:
    print(f"Failed to load DLL: {e}")
    exit(1)

# Initialize USB
def initialize_usb(fUSB):
    """Initialize the USB device."""
    try:
        result = dll.initializeUSB(c_ubyte(fUSB))
        if result == 0:
            return "Initialization Successful"
        else:
            return f"Initialization Failed with code: {result}"
    except Exception as e:
        return f"Initialization Error: {str(e)}"

@app.route('/api/initialize', methods=['POST'])
def api_initialize_usb():
    try:
        result = initialize_usb(1)  # Assuming USB mode 0
        return jsonify(success=True, message=result)
    except Exception as e:
        return jsonify(success=False, error=str(e))


# Issue a guest card
def issue_guest_card(fUSB, dlsCoID, card_no, dai, llock, pdoors, bdate, edate, lock_no):
    """Issue a guest card."""
    card_hex_str = create_string_buffer(128)
    try:
        result = dll.GuestCard(
            c_ubyte(fUSB),
            c_int(dlsCoID),
            c_ubyte(card_no),
            c_ubyte(dai),
            c_ubyte(llock),
            c_ubyte(pdoors),
            bdate.encode('utf-8'),
            edate.encode('utf-8'),
            lock_no.encode('utf-8'),
            card_hex_str
        )
        if result == 0:
            return f"Guest card issued successfully: {card_hex_str.value.decode('utf-8').strip()}"
        else:
            return f"Failed to issue guest card with code: {result}"
    except Exception as e:
        return f"Error issuing guest card: {str(e)}"

@app.route('/api/issue-card', methods=['POST'])
def api_issue_card():
    try:
        data = request.json
        result = issue_guest_card(
            1,  # USB mode
            data['dlsCoID'],
            data['cardNo'],
            data['dai'],
            data['llock'],
            data['pdoors'],
            data['bdate'],
            data['edate'],
            data['lockNo']
        )
        return jsonify(success=True, message=result)
    except Exception as e:
        return jsonify(success=False, error=str(e))


# Read card data
def read_card(fUSB):
    """Read card data."""
    buff_data = create_string_buffer(128)
    try:
        result = dll.ReadCard(c_ubyte(fUSB), buff_data)
        if result == 0:
            return f"Card data read successfully: {buff_data.value.decode('utf-8').strip()}"
        else:
            return f"Failed to read card with code: {result}"
    except Exception as e:
        return f"Error reading card: {str(e)}"

@app.route('/api/read-card', methods=['POST'])
def api_read_card():
    try:
        result = read_card(1)  # Assuming USB mode 0
        return jsonify(success=True, message=result)
    except Exception as e:
        return jsonify(success=False, error=str(e))


# Get guest lock number
def get_guest_lock_no(dlsCoID, card_data):
    """Get guest lock number from card data."""
    lock_no = create_string_buffer(8)
    try:
        result = dll.GetGuestLockNoByCardDataStr(c_int(dlsCoID), card_data.encode('utf-8'), lock_no)
        if result == 0:
            return f"Guest lock number: {lock_no.value.decode('utf-8').strip()}"
        elif result == 2:
            return "Failed: This card does not belong to this hotel (Error Code 2)"
        else:
            return f"Failed to get guest lock number with code: {result}"
    except Exception as e:
        return f"Error getting guest lock number: {str(e)}"

@app.route('/api/lock-number', methods=['POST'])
def api_get_guest_lock_no():
    try:
        data = request.json
        result = get_guest_lock_no(data['dlsCoID'], data['cardData'])
        return jsonify(success=True, message=result)
    except Exception as e:
        return jsonify(success=False, error=str(e))


# Get guest card expiry time
def get_guest_card_expiry(dlsCoID, card_data):
    """Get guest card expiry time from card data."""
    expiry_time = create_string_buffer(10)
    try:
        result = dll.GetGuestETimeByCardDataStr(c_int(dlsCoID), card_data.encode('utf-8'), expiry_time)
        if result == 0:
            return f"Guest card expiry time: {expiry_time.value.decode('utf-8').strip()}"
        elif result == 2:
            return "Failed: This card does not belong to this hotel (Error Code 2)"
        else:
            return f"Failed to get guest card expiry time with code: {result}"
    except Exception as e:
        return f"Error getting guest card expiry time: {str(e)}"

@app.route('/api/card-expiry', methods=['POST'])
def api_get_guest_card_expiry():
    try:
        data = request.json
        result = get_guest_card_expiry(data['dlsCoID'], data['cardData'])
        return jsonify(success=True, message=result)
    except Exception as e:
        return jsonify(success=False, error=str(e))


# Start the Flask server
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=False) 