class ChumbyEarthquakeEvent {
	
	private var eventDescription:String;
	private var eventDate:String;
	private var eventLat:Number;
	private var eventLong:Number;
	private var eventMagnitude:Number;
	
	public function ChumbyEarthquakeEvent(description:String, date:String, lat:Number, long:Number) {
		eventDescription = description;
		eventDate = date;
		eventLat = lat;
		eventLong = long;
		
		eventMagnitude = Number(eventDescription.substring(2, eventDescription.indexOf(" -", 2)));
	}
	
	public function get description():String {
		return eventDescription;
	}
	
	public function get date():String {
		return eventDate;
	}
	
	public function get lat():Number {
		return eventLat;
	}
	
	public function get long():Number {
		return eventLong;
	}
	
	public function get magnitude():Number {
		return eventMagnitude;
	}
	
	public static function compare(a, b):Number {
		if (a.magnitude > b.magnitude)
			return 1;
		else if (a.magnitude < b.magnitude)
			return -1;
		else
			return 0;
	}
}