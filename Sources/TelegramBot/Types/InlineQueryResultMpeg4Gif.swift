// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation
import SwiftyJSON

/// Represents a link to a video animation (H.264/MPEG-4 AVC video without sound). By default, this animated MPEG-4 file will be sent by the user with optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the animation.
///
/// - SeeAlso: <https://core.telegram.org/bots/api#inlinequeryresultmpeg4gif>

public struct InlineQueryResultMpeg4Gif: JsonConvertible {
    /// Original JSON for fields not yet added to Swift structures.
    public var json: JSON

    /// Type of the result, must be mpeg4_gif
    public var type_string: String {
        get { return json["type"].stringValue }
        set { json["type"].stringValue = newValue }
    }

    /// Unique identifier for this result, 1-64 bytes
    public var id: String {
        get { return json["id"].stringValue }
        set { json["id"].stringValue = newValue }
    }

    /// A valid URL for the MP4 file. File size must not exceed 1MB
    public var mpeg4_url: String {
        get { return json["mpeg4_url"].stringValue }
        set { json["mpeg4_url"].stringValue = newValue }
    }

    /// Optional. Video width
    public var mpeg4_width: Int? {
        get { return json["mpeg4_width"].int }
        set { json["mpeg4_width"].int = newValue }
    }

    /// Optional. Video height
    public var mpeg4_height: Int? {
        get { return json["mpeg4_height"].int }
        set { json["mpeg4_height"].int = newValue }
    }

    /// URL of the static thumbnail (jpeg or gif) for the result
    public var thumb_url: String {
        get { return json["thumb_url"].stringValue }
        set { json["thumb_url"].stringValue = newValue }
    }

    /// Optional. Title for the result
    public var title: String? {
        get { return json["title"].string }
        set { json["title"].string = newValue }
    }

    /// Optional. Caption of the MPEG-4 file to be sent, 0-200 characters
    public var caption: String? {
        get { return json["caption"].string }
        set { json["caption"].string = newValue }
    }

    /// Optional. Inline keyboard attached to the message
    public var reply_markup: InlineKeyboardMarkup? {
        get {
            let value = json["reply_markup"]
            return value.isNullOrUnknown ? nil : InlineKeyboardMarkup(json: value)
        }
        set {
            json["reply_markup"] = newValue?.json ?? nil
        }
    }

    /// Optional. Content of the message to be sent instead of the video animation
    public var input_message_content: InputMessageContent? {
        get {
            let value = json["input_message_content"]
            return value.isNullOrUnknown ? nil : InputMessageContent(json: value)
        }
        set {
            json["input_message_content"] = newValue?.json ?? nil
        }
    }

    public init(json: JSON = [:]) {
        self.json = json
    }
}
