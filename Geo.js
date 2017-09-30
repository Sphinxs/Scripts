
/*

    Allow location on your browser !
    
    File.html -> <script type="text/javascript" src="Geo.js"></script>

*/

if ( 'geolocation' in navigator ) {

    navigator.geolocation.getCurrentPosition ( function ( position ) {
            console.log ( position );
        }, function ( error ) {
            console.log ( error );
        },
        {
            enableHighAccuracy: true
        }
    );

} else {

    alert ( 'Navigator not found' )

}
