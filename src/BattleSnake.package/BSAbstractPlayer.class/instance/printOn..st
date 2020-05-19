printing
printOn: stream
	stream 
		<< 'Name: ';
		<< name;
		<< ' Size: ';
		<< self size asString;
		<< ' Health: ';
		<< health asString.
	eliminatedCause ifNil: [ ^ self ].
	stream
		cr;
		tab;
		<< ' Eliminated cause: ';
		<< eliminatedCause.