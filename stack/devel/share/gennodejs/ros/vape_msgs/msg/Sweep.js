// Auto-generated. Do not edit!

// (in-package vape_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Sweep {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.i = null;
    }
    else {
      if (initObj.hasOwnProperty('i')) {
        this.i = initObj.i
      }
      else {
        this.i = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Sweep
    // Serialize message field [i]
    bufferOffset = _serializer.uint32(obj.i, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Sweep
    let len;
    let data = new Sweep(null);
    // Deserialize message field [i]
    data.i = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vape_msgs/Sweep';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fe8f8503cfe379ff4fb978ea4ca6f246';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 i
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Sweep(null);
    if (msg.i !== undefined) {
      resolved.i = msg.i;
    }
    else {
      resolved.i = 0
    }

    return resolved;
    }
};

module.exports = Sweep;
