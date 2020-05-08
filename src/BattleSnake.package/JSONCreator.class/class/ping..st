utilities
ping: aMessage 
	| messageResponse messageResponseJSON |
	messageResponse := Dictionary new.
	messageResponse at: 'message' put: aMessage.
	messageResponseJSON := NeoJSONWriter toString: messageResponse.
	^ messageResponseJSON