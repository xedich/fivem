-- Native definitions

native "ADD_MINIMAP_OVERLAY"
	arguments {
		charPtr "name",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
Loads a minimap overlay from a GFx file in the current resource.
</summary>
<param name="name">The path to a `.gfx` file in the current resource. It has to be specified as a `file`.</param>
<returns>A minimap overlay ID.</returns>
	]]

native "ADD_REPLACE_TEXTURE"
	arguments {
		charPtr "origTxd",
		charPtr "origTxn",
		charPtr "newTxd",
		charPtr "newTxn",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Experimental natives, please do not use in a live environment.
</summary>
	]]

native "ADD_TEXT_ENTRY"
	arguments {
		charPtr "entryKey",
		charPtr "entryText",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "ADD_TEXT_ENTRY_BY_HASH"
	arguments {
		Hash "entryKey",
		charPtr "entryText",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "CALL_MINIMAP_SCALEFORM_FUNCTION"
	arguments {
		int "miniMap",
		charPtr "fnName",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
This is similar to the PushScaleformMovieFunction natives, except it calls in the `TIMELINE` of a minimap overlay.
</summary>
<param name="miniMap">The minimap overlay ID.</param>
<param name="fnName">A function in the overlay's TIMELINE.</param>
	]]

native "CAN_PLAYER_START_COMMERCE_SESSION"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
<summary>
Returns whether or not the specified player has enough information to start a commerce session for.
</summary>
<param name="playerSrc">The player handle</param>
<returns>True or false.</returns>
	]]

native "CANCEL_EVENT"
	ns "CFX"
    apiset "shared"
	returns "void"
	doc [[!
<summary>
Cancels the currently executing event.
</summary>
	]]

native "COMMIT_RUNTIME_TEXTURE"
	arguments {
		long "tex",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Commits the backing pixels to the specified runtime texture.
</summary>
<param name="tex">The runtime texture handle.</param>
	]]

native "CREATE_DUI"
	arguments {
		charPtr "url",
		int "width",
		int "height",
	}
	ns "CFX"
    apiset "client"
	returns "long"
	doc [[!
<summary>
Creates a DUI browser. This can be used to draw on a runtime texture using CREATE_RUNTIME_TEXTURE_FROM_DUI_HANDLE.
</summary>
<param name="url">The initial URL to load in the browser.</param>
<param name="width">The width of the backing surface.</param>
<param name="height">The height of the backing surface.</param>
<returns>A DUI object.</returns>
	]]

native "CREATE_RUNTIME_TEXTURE"
	arguments {
		long "txd",
		charPtr "txn",
		int "width",
		int "height",
	}
	ns "CFX"
    apiset "client"
	returns "long"
	doc [[!
<summary>
Creates a blank runtime texture.
</summary>
<param name="txd">A handle to the runtime TXD to create the runtime texture in.</param>
<param name="txn">The name for the texture in the runtime texture dictionary.</param>
<param name="width">The width of the new texture.</param>
<param name="height">The height of the new texture.</param>
<returns>A runtime texture handle.</returns>
	]]

native "CREATE_RUNTIME_TEXTURE_FROM_DUI_HANDLE"
	arguments {
		long "txd",
		charPtr "txn",
		charPtr "duiHandle",
	}
	ns "CFX"
    apiset "client"
	returns "long"
	doc [[!
<summary>
Creates a runtime texture from a DUI handle.
</summary>
<param name="txd">A handle to the runtime TXD to create the runtime texture in.</param>
<param name="txn">The name for the texture in the runtime texture dictionary.</param>
<param name="duiHandle">The DUI handle returned from GET_DUI_HANDLE.</param>
<returns>The runtime texture handle.</returns>
	]]

native "CREATE_RUNTIME_TEXTURE_FROM_IMAGE"
	arguments {
		long "txd",
		charPtr "txn",
		charPtr "fileName",
	}
	ns "CFX"
    apiset "client"
	returns "long"
	doc [[!
<summary>
Creates a runtime texture from the specified file in the current resource.
</summary>
<param name="txd">A handle to the runtime TXD to create the runtime texture in.</param>
<param name="txn">The name for the texture in the runtime texture dictionary.</param>
<param name="fileName">The file name of an image to load. This should preferably be a PNG, and has to be specified as a `file` in the resource manifest.</param>
<returns>A runtime texture handle.</returns>
	]]

native "CREATE_RUNTIME_TXD"
	arguments {
		charPtr "name",
	}
	ns "CFX"
    apiset "client"
	returns "long"
	doc [[!
<summary>
Creates a runtime texture dictionary with the specified name.
Example:

```lua
local txd = CreateRuntimeTxd('meow')
```
</summary>
<param name="name">The name for the runtime TXD.</param>
<returns>A handle to the runtime TXD.</returns>
	]]

native "DELETE_ENTITY"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
<summary>
Deletes the specified entity.
</summary>
<param name="entity">The entity to delete.</param>
	]]

native "DELETE_FUNCTION_REFERENCE"
	arguments {
		charPtr "referenceIdentity",
	}
	ns "CFX"
    apiset "shared"
	returns "void"
	doc [[!
	]]

native "DELETE_RESOURCE_KVP"
	arguments {
		charPtr "key",
	}
	ns "CFX"
    apiset "shared"
	returns "void"
	doc [[!
	]]

native "DESTROY_DUI"
	arguments {
		long "duiObject",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Destroys a DUI browser.
</summary>
<param name="duiObject">The DUI browser handle.</param>
	]]

native "DOES_ENTITY_EXIST"
	arguments {
		Object "entity",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
	]]

native "DOES_PLAYER_OWN_SKU"
	arguments {
		charPtr "playerSrc",
		int "skuId",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
<summary>
Requests whether or not the player owns the specified SKU.
</summary>
<param name="playerSrc">The player handle</param>
<param name="skuId">The ID of the SKU.</param>
<returns>A boolean.</returns>
	]]

native "DOES_PLAYER_OWN_SKU_EXT"
	arguments {
		charPtr "playerSrc",
		int "skuId",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
<summary>
Requests whether or not the player owns the specified package.
</summary>
<param name="playerSrc">The player handle</param>
<param name="skuId">The package ID on Tebex.</param>
<returns>A boolean.</returns>
	]]

native "DOOR_SYSTEM_GET_ACTIVE"
	ns "CFX"
    apiset "client"
	returns "object"
	doc [[!
<summary>
Returns a list of door system entries: a door system hash (see [ADD_DOOR_TO_SYSTEM](#\_0x6F8838D03D1DC226)) and its object handle.

The data returned adheres to the following layout:

```
[{doorHash1, doorHandle1}, ..., {doorHashN, doorHandleN}]
```
</summary>
<returns>An object containing a list of door system entries.</returns>
	]]

native "DOOR_SYSTEM_GET_SIZE"
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<returns>The number of doors registered in the system</returns>
	]]

native "DROP_PLAYER"
	arguments {
		charPtr "playerSrc",
		charPtr "reason",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "DUPLICATE_FUNCTION_REFERENCE"
	arguments {
		charPtr "referenceIdentity",
	}
	ns "CFX"
    apiset "shared"
	returns "charPtr"
	doc [[!
	]]

native "ENABLE_ENHANCED_HOST_SUPPORT"
	arguments {
		BOOL "enabled",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "END_FIND_KVP"
	arguments {
		int "handle",
	}
	ns "CFX"
    apiset "shared"
	returns "void"
	doc [[!
	]]

native "END_FIND_OBJECT"
	arguments {
		int "findHandle",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "END_FIND_PED"
	arguments {
		int "findHandle",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "END_FIND_PICKUP"
	arguments {
		int "findHandle",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "END_FIND_VEHICLE"
	arguments {
		int "findHandle",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "ENSURE_ENTITY_STATE_BAG"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
<summary>
Internal function for ensuring an entity has a state bag.
</summary>
	]]

native "EXECUTE_COMMAND"
	arguments {
		charPtr "commandString",
	}
	ns "CFX"
    apiset "shared"
	returns "void"
	doc [[!
	]]

native "EXPERIMENTAL_LOAD_CLONE_CREATE"
	arguments {
		charPtr "data",
		int "objectId",
		charPtr "tree",
	}
	ns "CFX"
    apiset "client"
	returns "Entity"
	doc [[!
<summary>
This native is not implemented.
</summary>
	]]

native "EXPERIMENTAL_LOAD_CLONE_SYNC"
	arguments {
		Entity "entity",
		charPtr "data",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
This native is not implemented.
</summary>
	]]

native "EXPERIMENTAL_SAVE_CLONE_CREATE"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "client"
	returns "charPtr"
	doc [[!
<summary>
This native is not implemented.
</summary>
	]]

native "EXPERIMENTAL_SAVE_CLONE_SYNC"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "client"
	returns "charPtr"
	doc [[!
<summary>
This native is not implemented.
</summary>
	]]

native "FIND_FIRST_OBJECT"
	arguments {
		EntityPtr "outEntity",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "FIND_FIRST_PED"
	arguments {
		EntityPtr "outEntity",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "FIND_FIRST_PICKUP"
	arguments {
		EntityPtr "outEntity",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "FIND_FIRST_VEHICLE"
	arguments {
		EntityPtr "outEntity",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "FIND_KVP"
	arguments {
		int "handle",
	}
	ns "CFX"
    apiset "shared"
	returns "charPtr"
	doc [[!
	]]

native "FIND_NEXT_OBJECT"
	arguments {
		int "findHandle",
		EntityPtr "outEntity",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "FIND_NEXT_PED"
	arguments {
		int "findHandle",
		EntityPtr "outEntity",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "FIND_NEXT_PICKUP"
	arguments {
		int "findHandle",
		EntityPtr "outEntity",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "FIND_NEXT_VEHICLE"
	arguments {
		int "findHandle",
		EntityPtr "outEntity",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "FLAG_SERVER_AS_PRIVATE"
	arguments {
		BOOL "private_",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "FORCE_SNOW_PASS"
	arguments {
		BOOL "enabled",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Forces the game snow pass to render.
</summary>
<param name="enabled">Whether or not to force rendering to use a snow pass.</param>
	]]

native "GET_ACTIVE_PLAYERS"
	ns "CFX"
    apiset "client"
	returns "object"
	doc [[!
<summary>
Returns all player indices for 'active' physical players known to the client.
The data returned adheres to the following layout:

```
[127, 42, 13, 37]
```
</summary>
<returns>An object containing a list of player indices.</returns>
	]]

native "GET_AIR_DRAG_MULTIPLIER_FOR_PLAYERS_VEHICLE"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "float"
	doc [[!
<param name="playerSrc">The player handle</param>
	]]

native "GET_ALL_OBJECTS"
	ns "CFX"
    apiset "server"
	returns "object"
	doc [[!
<summary>
Returns all object handles known to the server.
The data returned adheres to the following layout:

```
[127, 42, 13, 37]
```
</summary>
<returns>An object containing a list of object handles.</returns>
	]]

native "GET_ALL_PEDS"
	ns "CFX"
    apiset "server"
	returns "object"
	doc [[!
<summary>
Returns all peds handles known to the server.
The data returned adheres to the following layout:

```
[127, 42, 13, 37]
```
</summary>
<returns>An object containing a list of peds handles.</returns>
	]]

native "GET_ALL_VEHICLES"
	ns "CFX"
    apiset "server"
	returns "object"
	doc [[!
<summary>
Returns all vehicle handles known to the server.
The data returned adheres to the following layout:

```
[127, 42, 13, 37]
```
</summary>
<returns>An object containing a list of vehicle handles.</returns>
	]]

native "GET_AMBIENT_PED_RANGE_MULTIPLIER"
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<summary>
A getter for [SET_AMBIENT_PED_RANGE_MULTIPLIER_THIS_FRAME](#\_0x0B919E1FB47CC4E0).
</summary>
<returns>Returns ambient ped range multiplier value.</returns>
	]]

native "GET_AMBIENT_VEHICLE_RANGE_MULTIPLIER"
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<summary>
A getter for [SET_AMBIENT_VEHICLE_RANGE_MULTIPLIER_THIS_FRAME](#\_0x90B6DA738A9A25DA).
</summary>
<returns>Returns ambient vehicle range multiplier value.</returns>
	]]

native "GET_CAM_MATRIX"
	arguments {
		Cam "camera",
		Vector3Ptr "rightVector",
		Vector3Ptr "forwardVector",
		Vector3Ptr "upVector",
		Vector3Ptr "position",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Returns the world matrix of the specified camera. To turn this into a view matrix, calculate the inverse.
</summary>
	]]

native "GET_CONSOLE_BUFFER"
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
<summary>
Returns the current console output buffer.
</summary>
<returns>The most recent game console output, as a string.</returns>
	]]

native "GET_CONVAR"
	arguments {
		charPtr "varName",
		charPtr "default_",
	}
	ns "CFX"
    apiset "shared"
	returns "charPtr"
	doc [[!
	]]

native "GET_CONVAR_INT"
	arguments {
		charPtr "varName",
		int "default_",
	}
	ns "CFX"
    apiset "shared"
	returns "int"
	doc [[!
	]]

native "GET_CURRENT_RESOURCE_NAME"
	ns "CFX"
    apiset "shared"
	returns "charPtr"
	doc [[!
<summary>
Returns the name of the currently executing resource.
</summary>
<returns>The name of the resource.</returns>
	]]

native "GET_CURRENT_SERVER_ENDPOINT"
	ns "CFX"
    apiset "client"
	returns "charPtr"
	doc [[!
<summary>
Returns the peer address of the remote game server that the user is currently connected to.
</summary>
<returns>The peer address of the game server (e.g. `127.0.0.1:30120`), or NULL if not available.</returns>
	]]

native "GET_DUI_HANDLE"
	arguments {
		long "duiObject",
	}
	ns "CFX"
    apiset "client"
	returns "charPtr"
	doc [[!
<summary>
Returns the NUI window handle for a specified DUI browser object.
</summary>
<param name="duiObject">The DUI browser handle.</param>
<returns>The NUI window handle, for use in e.g. CREATE_RUNTIME_TEXTURE_FROM_DUI_HANDLE.</returns>
	]]

native "GET_ENTITY_COORDS"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "Vector3"
	doc [[!
<summary>
Gets the current coordinates for a specified entity. This native is used server side when using OneSync. See <a href="#_0x3FEF770D40960D5A" >GET_ENTITY_COORDS</a> for client side.
</summary>
<param name="entity">The entity to get the coordinates from.</param>
<returns>The current entity coordinates.</returns>
	]]

native "GET_ENTITY_HEADING"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "float"
	doc [[!
	]]

native "GET_ENTITY_HEALTH"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
<summary>
Currently it only works with peds.
</summary>
	]]

native "GET_ENTITY_MAX_HEALTH"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
<summary>
Currently it only works with peds.
</summary>
	]]

native "GET_ENTITY_MODEL"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "Hash"
	doc [[!
	]]

native "GET_ENTITY_POPULATION_TYPE"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
<summary>
This native gets an entity's population type.
</summary>
<param name="entity">the entity to obtain the population type from</param>
<returns>Returns the population type ID, defined by the below enumeration:```cpp
enum ePopulationType
{
	POPTYPE_UNKNOWN = 0,
	POPTYPE_RANDOM_PERMANENT,
	POPTYPE_RANDOM_PARKED,
	POPTYPE_RANDOM_PATROL,
	POPTYPE_RANDOM_SCENARIO,
	POPTYPE_RANDOM_AMBIENT,
	POPTYPE_PERMANENT,
	POPTYPE_MISSION,
	POPTYPE_REPLAY,
	POPTYPE_CACHE,
	POPTYPE_TOOL
};
```</returns>
	]]

native "GET_ENTITY_ROTATION"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "Vector3"
	doc [[!
	]]

native "GET_ENTITY_ROTATION_VELOCITY"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "Vector3"
	doc [[!
	]]

native "GET_ENTITY_SCRIPT"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_ENTITY_TYPE"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_ENTITY_VELOCITY"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "Vector3"
	doc [[!
	]]

native "GET_GAME_POOL"
	arguments {
		charPtr "poolname",
	}
	ns "CFX"
    apiset "client"
	returns "object"
	doc [[!
<summary>
Returns all pool handles for the given pool name; the data returned adheres to the following layout:

```
[ 770, 1026, 1282, 1538, 1794, 2050, 2306, 2562, 2818, 3074, 3330, 3586, 3842, 4098, 4354, 4610, ...]
```

### Supported Pools

**1**: CPed\
**2**: CObject\
**3**: CVehicle\
**4**: CPickup
</summary>
<returns>An object containing a list of all pool handles</returns>
	]]

native "GET_GAME_TIMER"
	ns "CFX"
    apiset "server"
	returns "long"
	doc [[!
<summary>
Gets the current game timer in milliseconds.
</summary>
<returns>The game time.</returns>
	]]

native "GET_HASH_KEY"
	arguments {
		charPtr "model",
	}
	ns "CFX"
    apiset "server"
	returns "Hash"
	doc [[!
<summary>
This native converts the passed string to a hash.
</summary>
	]]

native "GET_HOST_ID"
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_INSTANCE_ID"
	ns "CFX"
    apiset "shared"
	returns "int"
	doc [[!
	]]

native "GET_INTERIOR_ENTITIES_EXTENTS"
	arguments {
		int "interiorId",
		floatPtr "bbMinX",
		floatPtr "bbMinY",
		floatPtr "bbMinZ",
		floatPtr "bbMaxX",
		floatPtr "bbMaxY",
		floatPtr "bbMaxZ",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<param name="interiorId">The target interior.</param>
<returns>Interior entities extents.</returns>
	]]

native "GET_INTERIOR_PORTAL_CORNER_POSITION"
	arguments {
		int "interiorId",
		int "portalIndex",
		int "cornerIndex",
		floatPtr "posX",
		floatPtr "posY",
		floatPtr "posZ",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<param name="interiorId">The target interior.</param>
<param name="portalIndex">Interior portal index.</param>
<param name="cornerIndex">Portal's corner index.</param>
<returns>Portal corner position.</returns>
	]]

native "GET_INTERIOR_PORTAL_COUNT"
	arguments {
		int "interiorId",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<param name="interiorId">The target interior.</param>
<returns>The amount of portals in interior.</returns>
	]]

native "GET_INTERIOR_PORTAL_FLAG"
	arguments {
		int "interiorId",
		int "portalIndex",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<param name="interiorId">The target interior.</param>
<param name="portalIndex">Interior portal index.</param>
<returns>Portal's flag.</returns>
	]]

native "GET_INTERIOR_PORTAL_ROOM_FROM"
	arguments {
		int "interiorId",
		int "portalIndex",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<param name="interiorId">The target interior.</param>
<param name="portalIndex">Interior portal index.</param>
<returns>Portal's room FROM index.</returns>
	]]

native "GET_INTERIOR_PORTAL_ROOM_TO"
	arguments {
		int "interiorId",
		int "portalIndex",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<param name="interiorId">The target interior.</param>
<param name="portalIndex">Interior portal index.</param>
<returns>Portal's room TO index.</returns>
	]]

native "GET_INTERIOR_POSITION"
	arguments {
		int "interiorId",
		floatPtr "posX",
		floatPtr "posY",
		floatPtr "posZ",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<param name="interiorId">The target interior.</param>
<returns>Interior position.</returns>
	]]

native "GET_INTERIOR_ROOM_COUNT"
	arguments {
		int "interiorId",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<param name="interiorId">The target interior.</param>
<returns>The amount of rooms in interior.</returns>
	]]

native "GET_INTERIOR_ROOM_EXTENTS"
	arguments {
		int "interiorId",
		int "roomIndex",
		floatPtr "bbMinX",
		floatPtr "bbMinY",
		floatPtr "bbMinZ",
		floatPtr "bbMaxX",
		floatPtr "bbMaxY",
		floatPtr "bbMaxZ",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<param name="interiorId">The target interior.</param>
<param name="roomIndex">Interior room index.</param>
<returns>Room extents.</returns>
	]]

native "GET_INTERIOR_ROOM_FLAG"
	arguments {
		int "interiorId",
		int "roomIndex",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<param name="interiorId">The target interior.</param>
<param name="roomIndex">Interior room index.</param>
<returns>Room's flag.</returns>
	]]

native "GET_INTERIOR_ROOM_INDEX_BY_HASH"
	arguments {
		int "interiorId",
		int "roomHash",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<param name="interiorId">The target interior.</param>
<param name="roomHash">Interior room hash.</param>
<returns>Room index, -1 if failed.</returns>
	]]

native "GET_INTERIOR_ROOM_NAME"
	arguments {
		int "interiorId",
		int "roomIndex",
	}
	ns "CFX"
    apiset "client"
	returns "charPtr"
	doc [[!
<param name="interiorId">The target interior.</param>
<param name="roomIndex">Interior room index.</param>
<returns>Room's name.</returns>
	]]

native "GET_INTERIOR_ROOM_TIMECYCLE"
	arguments {
		int "interiorId",
		int "roomIndex",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<param name="interiorId">The target interior.</param>
<param name="roomIndex">Interior room index.</param>
<returns>Room's timecycle hash.</returns>
	]]

native "GET_INTERIOR_ROTATION"
	arguments {
		int "interiorId",
		floatPtr "rotx",
		floatPtr "rotY",
		floatPtr "rotZ",
		floatPtr "rotW",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<param name="interiorId">The target interior.</param>
<returns>Interior rotation in quaternion.</returns>
	]]

native "GET_INVOKING_RESOURCE"
	ns "CFX"
    apiset "shared"
	returns "charPtr"
	doc [[!
	]]

native "GET_IS_VEHICLE_ENGINE_RUNNING"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
	]]

native "GET_IS_VEHICLE_PRIMARY_COLOUR_CUSTOM"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
	]]

native "GET_IS_VEHICLE_SECONDARY_COLOUR_CUSTOM"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
	]]

native "GET_MAP_ZOOM_DATA_LEVEL"
	arguments {
		int "index",
		floatPtr "zoomScale",
		floatPtr "zoomSpeed",
		floatPtr "scrollSpeed",
		floatPtr "tilesX",
		floatPtr "tilesY",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
Returns the zoom level data by index from mapzoomdata.meta file.
</summary>
<param name="index">Zoom level index.</param>
<param name="zoomScale">fZoomScale value.</param>
<param name="zoomSpeed">fZoomSpeed value.</param>
<param name="scrollSpeed">fScrollSpeed value.</param>
<param name="tilesX">vTiles X.</param>
<param name="tilesY">vTiles Y.</param>
<returns>A boolean indicating TRUE if the data was received successfully.</returns>
	]]

native "GET_NUI_CURSOR_POSITION"
	arguments {
		intPtr "x",
		intPtr "y",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "GET_NUM_PLAYER_IDENTIFIERS"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_NUM_PLAYER_INDICES"
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_NUM_RESOURCE_METADATA"
	arguments {
		charPtr "resourceName",
		charPtr "metadataKey",
	}
	ns "CFX"
    apiset "shared"
	returns "int"
	doc [[!
<summary>
Gets the amount of metadata values with the specified key existing in the specified resource's manifest.
See also: [Resource manifest](https://docs.fivem.net/resources/manifest/)
</summary>
<param name="resourceName">The resource name.</param>
<param name="metadataKey">The key to look up in the resource manifest.</param>
	]]

native "GET_NUM_RESOURCES"
	ns "CFX"
    apiset "shared"
	returns "int"
	doc [[!
	]]

native "GET_PARKED_VEHICLE_DENSITY_MULTIPLIER"
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<summary>
A getter for [SET_PARKED_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME](#\_0xEAE6DCC7EEE3DB1D).
</summary>
<returns>Returns parked vehicle density multiplier value.</returns>
	]]

native "GET_PASSWORD_HASH"
	arguments {
		charPtr "password",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_PED_ARMOUR"
	arguments {
		Ped "ped",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_PED_CAUSE_OF_DEATH"
	arguments {
		Ped "ped",
	}
	ns "CFX"
    apiset "server"
	returns "Hash"
	doc [[!
	]]

native "GET_PED_DENSITY_MULTIPLIER"
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<summary>
A getter for [SET_PED_DENSITY_MULTIPLIER_THIS_FRAME](#\_0x95E3D6257B166CF2).
</summary>
<returns>Returns ped density multiplier value.</returns>
	]]

native "GET_PED_DESIRED_HEADING"
	arguments {
		Ped "ped",
	}
	ns "CFX"
    apiset "server"
	returns "float"
	doc [[!
<param name="ped">The target ped</param>
<returns>Returns ped's desired heading.</returns>
	]]

native "GET_PED_EYE_COLOR"
	arguments {
		Ped "ped",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
A getter for [\_SET_PED_EYE_COLOR](#\_0x50B56988B170AFDF). Returns -1 if fails to get.
</summary>
<param name="ped">The target ped</param>
<returns>Returns ped's eye colour, or -1 if fails to get.</returns>
	]]

native "GET_PED_FACE_FEATURE"
	arguments {
		Ped "ped",
		int "index",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<summary>
A getter for [\_SET_PED_FACE_FEATURE](#\_0x71A5C1DBA060049E). Returns 0.0 if fails to get.
</summary>
<param name="ped">The target ped</param>
<param name="index">Face feature index</param>
<returns>Returns ped's face feature value, or 0.0 if fails to get.</returns>
	]]

native "GET_PED_HAIR_COLOR"
	arguments {
		Ped "ped",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
A getter for [\_SET_PED_HAIR_COLOR](#\_0x4CFFC65454C93A49). Returns -1 if fails to get.
</summary>
<param name="ped">The target ped</param>
<returns>Returns ped's primary hair colour.</returns>
	]]

native "GET_PED_HAIR_HIGHLIGHT_COLOR"
	arguments {
		Ped "ped",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
A getter for [\_SET_PED_HAIR_COLOR](#\_0x4CFFC65454C93A49). Returns -1 if fails to get.
</summary>
<param name="ped">The target ped</param>
<returns>Returns ped's secondary hair colour.</returns>
	]]

native "GET_PED_HEAD_OVERLAY_DATA"
	arguments {
		Ped "ped",
		int "index",
		intPtr "overlayValue",
		intPtr "colourType",
		intPtr "firstColour",
		intPtr "secondColour",
		floatPtr "overlayOpacity",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
A getter for [SET_PED_HEAD_OVERLAY](#\_0x48F44967FA05CC1E) and [\_SET_PED_HEAD_OVERLAY_COLOR](#\_0x497BF74A7B9CB952) natives.
</summary>
<param name="ped">The target ped</param>
<param name="index">Overlay index</param>
<param name="overlayValue">Overlay value pointer</param>
<param name="colourType">Colour type pointer</param>
<param name="firstColour">First colour pointer</param>
<param name="secondColour">Second colour pointer</param>
<param name="overlayOpacity">Opacity pointer</param>
<returns>Returns ped's head overlay data.</returns>
	]]

native "GET_PED_MAX_HEALTH"
	arguments {
		Ped "ped",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_PLAYER_ENDPOINT"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_PLAYER_FROM_INDEX"
	arguments {
		int "index",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_PLAYER_FROM_SERVER_ID"
	arguments {
		int "serverId",
	}
	ns "CFX"
    apiset "client"
	returns "Player"
	doc [[!
	]]

native "GET_PLAYER_GUID"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_PLAYER_IDENTIFIER"
	arguments {
		charPtr "playerSrc",
		int "identifier",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_PLAYER_INVINCIBLE"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
<param name="playerSrc">The player handle</param>
<returns>A boolean to tell if the player is invincible.</returns>
	]]

native "GET_PLAYER_INVINCIBLE_2"
	arguments {
		Player "player",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
Unlike [GET_PLAYER_INVINCIBLE](#\_0xB721981B2B939E07) this native gets both [SET_PLAYER_INVINCIBLE_KEEP_RAGDOLL_ENABLED](#\_0x6BC97F4F4BB3C04B) and [SET_PLAYER_INVINCIBLE](#\_0x239528EACDC3E7DE) invincibility state.
</summary>
<param name="player">The player id</param>
<returns>A boolean to tell if the player is invincible.</returns>
	]]

native "GET_PLAYER_LAST_MSG"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_PLAYER_MAX_ARMOUR"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
<param name="playerSrc">The player handle</param>
	]]

native "GET_PLAYER_MAX_HEALTH"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
<param name="playerSrc">The player handle</param>
	]]

native "GET_PLAYER_MELEE_WEAPON_DAMAGE_MODIFIER"
	arguments {
		Player "playerId",
	}
	ns "CFX"
    apiset "shared"
	returns "float"
	doc [[!
<summary>
A getter for [SET_PLAYER_MELEE_WEAPON_DAMAGE_MODIFIER](#\_0x4A3DC7ECCC321032).
</summary>
<param name="playerId">The player index.</param>
<returns>Returns player melee weapon damage modifier value.</returns>
	]]

native "GET_PLAYER_MELEE_WEAPON_DEFENSE_MODIFIER"
	arguments {
		Player "playerId",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<summary>
A getter for [SET_PLAYER_MELEE_WEAPON_DEFENSE_MODIFIER](#\_0xAE540335B4ABC4E2).
</summary>
<param name="playerId">The player index.</param>
<returns>The value of player melee weapon defense modifier.</returns>
	]]

native "GET_PLAYER_NAME"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_PLAYER_PED"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "Entity"
	doc [[!
	]]

native "GET_PLAYER_PING"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_PLAYER_SERVER_ID"
	arguments {
		Player "player",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "GET_PLAYER_TEAM"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
<param name="playerSrc">The player handle</param>
	]]

native "GET_PLAYER_TIME_IN_PURSUIT"
	arguments {
		charPtr "playerSrc",
		BOOL "lastPursuit",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
<summary>
```
Gets the amount of time player has spent evading the cops.
Counter starts and increments only when cops are chasing the player.
If the player is evading, the timer will pause.
```
</summary>
<param name="playerSrc">The target player</param>
<param name="lastPursuit">False = CurrentPursuit, True = LastPursuit</param>
<returns>Returns -1, if the player is not wanted or wasn't in pursuit before, depending on the lastPursuit parameter
Returns 0, if lastPursuit == False and the player has a wanted level, but the pursuit has not started yet
Otherwise, will return the milliseconds of the pursuit.</returns>
	]]

native "GET_PLAYER_VEHICLE_DAMAGE_MODIFIER"
	arguments {
		Player "playerId",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<summary>
A getter for [SET_PLAYER_VEHICLE_DAMAGE_MODIFIER](#\_0xA50E117CDDF82F0C).
</summary>
<param name="playerId">The player index.</param>
<returns>The value of player vehicle damage modifier.</returns>
	]]

native "GET_PLAYER_VEHICLE_DEFENSE_MODIFIER"
	arguments {
		Player "playerId",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<summary>
A getter for [SET_PLAYER_VEHICLE_DEFENSE_MODIFIER](#\_0x4C60E6EFDAFF2462).
</summary>
<param name="playerId">The player index.</param>
<returns>The value of player vehicle defense modifier.</returns>
	]]

native "GET_PLAYER_WANTED_LEVEL"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
<summary>
```
Returns given players wanted level server-side.
```
</summary>
<param name="playerSrc">The target player</param>
<returns>The wanted level</returns>
	]]

native "GET_PLAYER_WEAPON_DAMAGE_MODIFIER"
	arguments {
		Player "playerId",
	}
	ns "CFX"
    apiset "shared"
	returns "float"
	doc [[!
<summary>
A getter for [SET_PLAYER_WEAPON_DAMAGE_MODIFIER](#\_0xCE07B9F7817AADA3).
</summary>
<param name="playerId">The player index.</param>
<returns>The value of player weapon damage modifier.</returns>
	]]

native "GET_PLAYER_WEAPON_DEFENSE_MODIFIER"
	arguments {
		Player "playerId",
	}
	ns "CFX"
    apiset "shared"
	returns "float"
	doc [[!
<summary>
A getter for [SET_PLAYER_WEAPON_DEFENSE_MODIFIER](#\_0x2D83BC011CA14A3C).
</summary>
<param name="playerId">The player index.</param>
<returns>The value of player weapon defense modifier.</returns>
	]]

native "GET_PLAYER_WEAPON_DEFENSE_MODIFIER_2"
	arguments {
		Player "playerId",
	}
	ns "CFX"
    apiset "shared"
	returns "float"
	doc [[!
<summary>
A getter for [\_SET_PLAYER_WEAPON_DEFENSE_MODIFIER\_2](#\_0xBCFDE9EDE4CF27DC).
</summary>
<param name="playerId">The player index.</param>
<returns>The value of player weapon defense modifier 2.</returns>
	]]

native "GET_RANDOM_VEHICLE_DENSITY_MULTIPLIER"
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<summary>
A getter for [SET_RANDOM_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME](#\_0xB3B3359379FE77D3).
Same as vehicle density multiplier.
</summary>
<returns>Returns random vehicle density multiplier value.</returns>
	]]

native "GET_REGISTERED_COMMANDS"
	ns "CFX"
    apiset "shared"
	returns "object"
	doc [[!
<summary>
Returns all commands that are registered in the command system.
The data returned adheres to the following layout:

```
[
{
"name": "cmdlist"
},
{
"name": "command1"
}
]
```
</summary>
<returns>An object containing registered commands.</returns>
	]]

native "GET_RESOURCE_BY_FIND_INDEX"
	arguments {
		int "findIndex",
	}
	ns "CFX"
    apiset "shared"
	returns "charPtr"
	doc [[!
<param name="findIndex">The index of the resource (starting at 0)</param>
<returns>The resource name as a `string`</returns>
	]]

native "GET_RESOURCE_KVP_FLOAT"
	arguments {
		charPtr "key",
	}
	ns "CFX"
    apiset "shared"
	returns "float"
	doc [[!
	]]

native "GET_RESOURCE_KVP_INT"
	arguments {
		charPtr "key",
	}
	ns "CFX"
    apiset "shared"
	returns "int"
	doc [[!
	]]

native "GET_RESOURCE_KVP_STRING"
	arguments {
		charPtr "key",
	}
	ns "CFX"
    apiset "shared"
	returns "charPtr"
	doc [[!
	]]

native "GET_RESOURCE_METADATA"
	arguments {
		charPtr "resourceName",
		charPtr "metadataKey",
		int "index",
	}
	ns "CFX"
    apiset "shared"
	returns "charPtr"
	doc [[!
<summary>
Gets the metadata value at a specified key/index from a resource's manifest.
See also: [Resource manifest](https://docs.fivem.net/resources/manifest/)
</summary>
<param name="resourceName">The resource name.</param>
<param name="metadataKey">The key in the resource manifest.</param>
<param name="index">The value index, in a range from \[0..GET_NUM_RESOURCE_METDATA-1].</param>
	]]

native "GET_RESOURCE_PATH"
	arguments {
		charPtr "resourceName",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
<summary>
Returns the physical on-disk path of the specified resource.
</summary>
<param name="resourceName">The name of the resource.</param>
<returns>The resource directory name, possibly without trailing slash.</returns>
	]]

native "GET_RESOURCE_STATE"
	arguments {
		charPtr "resourceName",
	}
	ns "CFX"
    apiset "shared"
	returns "charPtr"
	doc [[!
<summary>
Returns the current state of the specified resource.
</summary>
<param name="resourceName">The name of the resource.</param>
<returns>The resource state. One of `"missing", "started", "starting", "stopped", "stopping", "uninitialized" or "unknown"`.</returns>
	]]

native "GET_RUNTIME_TEXTURE_HEIGHT"
	arguments {
		long "tex",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
Gets the height of the specified runtime texture.
</summary>
<param name="tex">A handle to the runtime texture.</param>
<returns>The height in pixels.</returns>
	]]

native "GET_RUNTIME_TEXTURE_PITCH"
	arguments {
		long "tex",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
Gets the row pitch of the specified runtime texture, for use when creating data for `SET_RUNTIME_TEXTURE_ARGB_DATA`.
</summary>
<param name="tex">A handle to the runtime texture.</param>
<returns>The row pitch in bytes.</returns>
	]]

native "GET_RUNTIME_TEXTURE_WIDTH"
	arguments {
		long "tex",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
Gets the width of the specified runtime texture.
</summary>
<param name="tex">A handle to the runtime texture.</param>
<returns>The width in pixels.</returns>
	]]

native "GET_SCENARIO_PED_DENSITY_MULTIPLIER"
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<summary>
A getter for [SET_SCENARIO_PED_DENSITY_MULTIPLIER_THIS_FRAME](#\_0x7A556143A1C03898).
</summary>
<returns>Returns scenario ped density multiplier value.</returns>
	]]

native "GET_SELECTED_PED_WEAPON"
	arguments {
		Ped "ped",
	}
	ns "CFX"
    apiset "server"
	returns "Hash"
	doc [[!
<summary>
Returns a hash of selected ped weapon.
</summary>
<param name="ped">The target ped.</param>
<returns>The weapon hash.</returns>
	]]

native "GET_STATE_BAG_VALUE"
	arguments {
		charPtr "bagName",
		charPtr "key",
	}
	ns "CFX"
    apiset "shared"
	returns "object"
	doc [[!
<summary>
Returns the value of a state bag key.
</summary>
<returns>Value.</returns>
	]]

native "GET_TRAIN_CURRENT_TRACK_NODE"
	arguments {
		Vehicle "train",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<param name="train">The target train.</param>
<returns>Train's current track node index.</returns>
	]]

native "GET_VEHICLE_ALARM_TIME_LEFT"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "GET_VEHICLE_BODY_HEALTH"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "server"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_CHEAT_POWER_INCREASE"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<summary>
A getter for [SET_VEHICLE_CHEAT_POWER_INCREASE](#\_0xB59E4BD37AE292DB).
</summary>
<param name="vehicle">The target vehicle.</param>
<returns>Returns vehicle's cheat power increase modifier value.</returns>
	]]

native "GET_VEHICLE_CLUTCH"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_COLOURS"
	arguments {
		Vehicle "vehicle",
		intPtr "colorPrimary",
		intPtr "colorSecondary",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "GET_VEHICLE_CURRENT_GEAR"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "GET_VEHICLE_CURRENT_RPM"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_CUSTOM_PRIMARY_COLOUR"
	arguments {
		Vehicle "vehicle",
		intPtr "r",
		intPtr "g",
		intPtr "b",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "GET_VEHICLE_CUSTOM_SECONDARY_COLOUR"
	arguments {
		Vehicle "vehicle",
		intPtr "r",
		intPtr "g",
		intPtr "b",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "GET_VEHICLE_DASHBOARD_COLOUR"
	arguments {
		Vehicle "vehicle",
		intPtr "color",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "GET_VEHICLE_DASHBOARD_SPEED"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_DENSITY_MULTIPLIER"
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<summary>
A getter for [SET_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME](#\_0x245A6883D966D537).
</summary>
<returns>Returns vehicle density multiplier value.</returns>
	]]

native "GET_VEHICLE_DIRT_LEVEL"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "server"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_DOOR_LOCK_STATUS"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
<summary>
```
enum VehicleLockStatus = {
    None = 0,
    Unlocked = 1,
    Locked = 2,
    LockedForPlayer = 3,
    StickPlayerInside = 4, -- Doesn't allow players to exit the vehicle with the exit vehicle key.
    CanBeBrokenInto = 7, -- Can be broken into the car. If the glass is broken, the value will be set to 1
    CanBeBrokenIntoPersist = 8, -- Can be broken into persist
    CannotBeTriedToEnter = 10, -- Cannot be tried to enter (Nothing happens when you press the vehicle enter key).
}
```
</summary>
	]]

native "GET_VEHICLE_DOOR_STATUS"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
<returns>A number from 0 to 7.</returns>
	]]

native "GET_VEHICLE_DOORS_LOCKED_FOR_PLAYER"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
<summary>
Currently it only works when set to "all players".
</summary>
	]]

native "GET_VEHICLE_DRAWN_WHEEL_ANGLE_MULT"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<summary>
Gets a vehicle's multiplier used with a wheel's GET_VEHICLE_WHEEL_STEERING_ANGLE to determine the angle the wheel is rendered.
</summary>
	]]

native "GET_VEHICLE_ENGINE_HEALTH"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "server"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_ENGINE_TEMPERATURE"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_EXTRA_COLOURS"
	arguments {
		Vehicle "vehicle",
		intPtr "pearlescentColor",
		intPtr "wheelColor",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "GET_VEHICLE_FUEL_LEVEL"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_GRAVITY_AMOUNT"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_HANDBRAKE"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "shared"
	returns "BOOL"
	doc [[!
	]]

native "GET_VEHICLE_HANDLING_FLOAT"
	arguments {
		Vehicle "vehicle",
		charPtr "class_",
		charPtr "fieldName",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<summary>
Returns the effective handling data of a vehicle as a floating-point value.
Example: `local fSteeringLock = GetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fSteeringLock')`
</summary>
<param name="vehicle">The vehicle to obtain data for.</param>
<param name="class_">The handling class to get. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to get. These match the keys in `handling.meta`.</param>
<returns>A floating-point value.</returns>
	]]

native "GET_VEHICLE_HANDLING_INT"
	arguments {
		Vehicle "vehicle",
		charPtr "class_",
		charPtr "fieldName",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
Returns the effective handling data of a vehicle as an integer value.
Example: `local modelFlags = GetVehicleHandlingInt(vehicle, 'CHandlingData', 'strModelFlags')`
</summary>
<param name="vehicle">The vehicle to obtain data for.</param>
<param name="class_">The handling class to get. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to get. These match the keys in `handling.meta`.</param>
<returns>An integer.</returns>
	]]

native "GET_VEHICLE_HANDLING_VECTOR"
	arguments {
		Vehicle "vehicle",
		charPtr "class_",
		charPtr "fieldName",
	}
	ns "CFX"
    apiset "client"
	returns "Vector3"
	doc [[!
<summary>
Returns the effective handling data of a vehicle as a vector value.
Example: `local inertiaMultiplier = GetVehicleHandlingVector(vehicle, 'CHandlingData', 'vecInertiaMultiplier')`
</summary>
<param name="vehicle">The vehicle to obtain data for.</param>
<param name="class_">The handling class to get. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to get. These match the keys in `handling.meta`.</param>
<returns>An integer.</returns>
	]]

native "GET_VEHICLE_HEADLIGHTS_COLOUR"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_VEHICLE_HIGH_GEAR"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "GET_VEHICLE_INDICATOR_LIGHTS"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
Gets the vehicle indicator light state. 0 = off, 1 = left, 2 = right, 3 = both
</summary>
<returns>An integer.</returns>
	]]

native "GET_VEHICLE_INTERIOR_COLOUR"
	arguments {
		Vehicle "vehicle",
		intPtr "color",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "GET_VEHICLE_LIGHTS_STATE"
	arguments {
		Vehicle "vehicle",
		BOOLPtr "lightsOn",
		BOOLPtr "highbeamsOn",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
	]]

native "GET_VEHICLE_LIVERY"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_VEHICLE_NEXT_GEAR"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "GET_VEHICLE_NUMBER_OF_WHEELS"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "GET_VEHICLE_NUMBER_PLATE_TEXT"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_VEHICLE_NUMBER_PLATE_TEXT_INDEX"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_VEHICLE_OIL_LEVEL"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_PED_IS_IN"
	arguments {
		Ped "ped",
		BOOL "lastVehicle",
	}
	ns "CFX"
    apiset "server"
	returns "Vehicle"
	doc [[!
<summary>
Gets the vehicle the specified Ped is/was in depending on bool value. This native is used server side when using OneSync.
</summary>
<param name="ped">The target ped</param>
<param name="lastVehicle">False = CurrentVehicle, True = LastVehicle</param>
<returns>The vehicle id. Returns 0 if the ped is/was not in a vehicle.</returns>
	]]

native "GET_VEHICLE_PETROL_TANK_HEALTH"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "server"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_RADIO_STATION_INDEX"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_VEHICLE_ROOF_LIVERY"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_VEHICLE_STEERING_ANGLE"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_STEERING_SCALE"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_THROTTLE_OFFSET"
	arguments {
		Vehicle "vehicle",
	}
	alias "GET_VEHICLE_CURRENT_ACCELERATION"
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<returns>A float among -1 and 1 according if the vehicle is moving forwards or backwards</returns>
	]]

native "GET_VEHICLE_TOP_SPEED_MODIFIER"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<summary>
A getter for [MODIFY_VEHICLE_TOP_SPEED](#\_0x93A3996368C94158). Returns -1.0 if a modifier is not set.
</summary>
<param name="vehicle">The target vehicle.</param>
<returns>Returns vehicle's modified top speed.</returns>
	]]

native "GET_VEHICLE_TURBO_PRESSURE"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_TYRE_SMOKE_COLOR"
	arguments {
		Vehicle "vehicle",
		intPtr "r",
		intPtr "g",
		intPtr "b",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "GET_VEHICLE_WHEEL_BRAKE_PRESSURE"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<summary>
Gets brake pressure of a wheel.
Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
</summary>
	]]

native "GET_VEHICLE_WHEEL_HEALTH"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_WHEEL_RIM_COLLIDER_SIZE"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<param name="vehicle">The vehicle to obtain data for.</param>
<param name="wheelIndex">Index of wheel, 0-3.</param>
<returns>Float representing size of the rim collider. Not sure what it is used for, probably to detect whether bullets hit rim or tire and puncture it (and to determine size of the wheel when tire is fully blown).</returns>
	]]

native "GET_VEHICLE_WHEEL_SIZE"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<summary>
Returns vehicle's wheels' size (size is the same for all the wheels, cannot get/set specific wheel of vehicle).
Only works on non-default wheels (returns 0 in case of default wheels).
</summary>
<param name="vehicle">The vehicle to obtain data for.</param>
<returns>Float representing size of the wheel (usually between 0.5 and 1.5)</returns>
	]]

native "GET_VEHICLE_WHEEL_SPEED"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<summary>
Gets speed of a wheel at the tyre.
Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
</summary>
<returns>An integer.</returns>
	]]

native "GET_VEHICLE_WHEEL_STEERING_ANGLE"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<summary>
Gets steering angle of a wheel.
Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
</summary>
<returns>The steering angle of the wheel, with 0 being straight.</returns>
	]]

native "GET_VEHICLE_WHEEL_SURFACE_MATERIAL"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<param name="vehicle">The vehicle to obtain data for.</param>
<param name="wheelIndex">Index of wheel, 0-3.</param>
<returns>Integer representing the index of the current surface material of that wheel. Check materials.dat for the indexes.</returns>
	]]

native "GET_VEHICLE_WHEEL_TIRE_COLLIDER_SIZE"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<param name="vehicle">The vehicle to obtain data for.</param>
<param name="wheelIndex">Index of wheel, 0-3.</param>
<returns>Float representing size of the wheel collider.</returns>
	]]

native "GET_VEHICLE_WHEEL_TIRE_COLLIDER_WIDTH"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<param name="vehicle">The vehicle to obtain data for.</param>
<param name="wheelIndex">Index of wheel, 0-3.</param>
<returns>Float representing width of the wheel collider.</returns>
	]]

native "GET_VEHICLE_WHEEL_TYPE"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_VEHICLE_WHEEL_WIDTH"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<summary>
Returns vehicle's wheels' width (width is the same for all the wheels, cannot get/set specific wheel of vehicle).
Only works on non-default wheels (returns 0 in case of default wheels).
</summary>
<param name="vehicle">The vehicle to obtain data for.</param>
<returns>Float representing width of the wheel (usually between 0.1 and 1.5)</returns>
	]]

native "GET_VEHICLE_WHEEL_X_OFFSET"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<summary>
Returns the offset of the specified wheel relative to the wheel's axle center.
</summary>
	]]

native "GET_VEHICLE_WHEEL_Y_ROTATION"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
	}
	alias "GET_VEHICLE_WHEEL_XROT"
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_WHEELIE_STATE"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
List of known states:

```
1: Not wheeling.
65: Vehicle is ready to do wheelie (burnouting).
129: Vehicle is doing wheelie.
```
</summary>
<param name="vehicle">Vehicle</param>
<returns>Vehicle's current wheelie state.</returns>
	]]

native "GET_VEHICLE_WINDOW_TINT"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_WEAPON_DAMAGE_MODIFIER"
	arguments {
		Hash "weaponHash",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<summary>
A getter for [\_SET_WEAPON_DAMAGE_MODIFIER](#\_0x4757F00BC6323CFE).
</summary>
<param name="weaponHash">Weapon name hash.</param>
<returns>A weapon damage modifier.</returns>
	]]

native "HAS_ENTITY_BEEN_MARKED_AS_NO_LONGER_NEEDED"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
	]]

native "HAS_MINIMAP_OVERLAY_LOADED"
	arguments {
		int "id",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
Returns whether or not the specific minimap overlay has loaded.
</summary>
<param name="id">A minimap overlay ID.</param>
<returns>A boolean indicating load status.</returns>
	]]

native "HAS_VEHICLE_BEEN_OWNED_BY_PLAYER"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
	]]

native "INVOKE_FUNCTION_REFERENCE"
	arguments {
		charPtr "referenceIdentity",
		charPtr "argsSerialized",
		int "argsLength",
		intPtr "retvalLength",
	}
	ns "CFX"
    apiset "shared"
	returns "charPtr"
	doc [[!
	]]

native "IS_ACE_ALLOWED"
	arguments {
		charPtr "object",
	}
	ns "CFX"
    apiset "shared"
	returns "BOOL"
	doc [[!
	]]

native "IS_BIGMAP_ACTIVE"
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
<!-- Native implemented by Disquse. 0xFFF65C63 -->

Returns true if the minimap is currently expanded. False if it's the normal minimap state.
Use [`IsBigmapFull`](#\_0x66EE14B2) to check if the full map is currently revealed on the minimap.
</summary>
<returns>A bool indicating if the minimap is currently expanded or normal state.</returns>
	]]

native "IS_BIGMAP_FULL"
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
<!-- Native implemented by Disquse. 0x66EE14B2 -->

Returns true if the full map is currently revealed on the minimap.
Use [`IsBigmapActive`](#\_0xFFF65C63) to check if the minimap is currently expanded or in it's normal state.
</summary>
<returns>Returns true if the full map is currently revealed on the minimap.</returns>
	]]

native "IS_DUI_AVAILABLE"
	arguments {
		long "duiObject",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
Returns whether or not a browser is created for a specified DUI browser object.
</summary>
<param name="duiObject">The DUI browser handle.</param>
<returns>A boolean indicating TRUE if the browser is created.</returns>
	]]

native "IS_DUPLICITY_VERSION"
	ns "CFX"
    apiset "shared"
	returns "BOOL"
	doc [[!
<summary>
Gets whether or not this is the CitizenFX server.
</summary>
<returns>A boolean value.</returns>
	]]

native "IS_PED_A_PLAYER"
	arguments {
		Ped "ped",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
<summary>
This native checks if the given ped is a player.
</summary>
<returns>Returns `true` if the ped is a player, `false` otherwise.</returns>
	]]

native "IS_PLAYER_ACE_ALLOWED"
	arguments {
		charPtr "playerSrc",
		charPtr "object",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
	]]

native "IS_PLAYER_COMMERCE_INFO_LOADED"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
<summary>
Requests whether or not the commerce data for the specified player has loaded.
</summary>
<param name="playerSrc">The player handle</param>
<returns>A boolean.</returns>
	]]

native "IS_PLAYER_COMMERCE_INFO_LOADED_EXT"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
<summary>
Requests whether or not the commerce data for the specified player has loaded from Tebex.
</summary>
<param name="playerSrc">The player handle</param>
<returns>A boolean.</returns>
	]]

native "IS_PLAYER_EVADING_WANTED_LEVEL"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
<summary>
```
This will return true if the player is evading wanted level, meaning that the wanted level stars are blink.
Otherwise will return false.

If the player is not wanted, it simply returns false.
```
</summary>
<param name="playerSrc">The target player</param>
<returns>boolean value, depending if the player is evading his wanted level or not.</returns>
	]]

native "IS_PLAYER_USING_SUPER_JUMP"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
<param name="playerSrc">The player handle</param>
<returns>A boolean.</returns>
	]]

native "IS_PRINCIPAL_ACE_ALLOWED"
	arguments {
		charPtr "principal",
		charPtr "object",
	}
	ns "CFX"
    apiset "shared"
	returns "BOOL"
	doc [[!
	]]

native "IS_STREAMING_FILE_READY"
	arguments {
		charPtr "registerAs",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.

Returns whether an asynchronous streaming file registration completed.
</summary>
<param name="registerAs">The file name to check, for example `asset.ydr`.</param>
<returns>Whether or not the streaming file has been registered.</returns>
	]]

native "IS_VEHICLE_ALARM_SET"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "IS_VEHICLE_ENGINE_STARTING"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "shared"
	returns "BOOL"
	doc [[!
	]]

native "IS_VEHICLE_EXTRA_TURNED_ON"
	arguments {
		Vehicle "vehicle",
		int "extraId",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
	]]

native "IS_VEHICLE_INTERIOR_LIGHT_ON"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "IS_VEHICLE_NEEDS_TO_BE_HOTWIRED"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "IS_VEHICLE_PREVIOUSLY_OWNED_BY_PLAYER"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "IS_VEHICLE_SIREN_ON"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
	]]

native "IS_VEHICLE_TYRE_BURST"
	arguments {
		Vehicle "vehicle",
		int "wheelID",
		BOOL "completely",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
	]]

native "IS_VEHICLE_WANTED"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "LOAD_PLAYER_COMMERCE_DATA"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
<summary>
Requests the commerce data for the specified player, including the owned SKUs. Use `IS_PLAYER_COMMERCE_INFO_LOADED` to check if it has loaded.
</summary>
<param name="playerSrc">The player handle</param>
	]]

native "LOAD_PLAYER_COMMERCE_DATA_EXT"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
<summary>
Requests the commerce data from Tebex for the specified player, including the owned SKUs. Use `IS_PLAYER_COMMERCE_INFO_LOADED` to check if it has loaded.
</summary>
<param name="playerSrc">The player handle</param>
	]]

native "LOAD_RESOURCE_FILE"
	arguments {
		charPtr "resourceName",
		charPtr "fileName",
	}
	ns "CFX"
    apiset "shared"
	returns "charPtr"
	doc [[!
<summary>
Reads the contents of a text file in a specified resource.
If executed on the client, this file has to be included in `files` in the resource manifest.
Example: `local data = LoadResourceFile("devtools", "data.json")`
</summary>
<param name="resourceName">The resource name.</param>
<param name="fileName">The file in the resource.</param>
<returns>The file contents</returns>
	]]

native "MUMBLE_ADD_VOICE_CHANNEL_LISTEN"
	arguments {
		int "channel",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Starts listening to the specified channel, when available.
</summary>
<param name="channel">A game voice channel ID.</param>
	]]

native "MUMBLE_ADD_VOICE_TARGET_CHANNEL"
	arguments {
		int "targetId",
		int "channel",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Adds the specified channel to the target list for the specified Mumble voice target ID.
</summary>
<param name="targetId">A Mumble voice target ID, ranging from 1..30 (inclusive).</param>
<param name="channel">A game voice channel ID.</param>
	]]

native "MUMBLE_ADD_VOICE_TARGET_PLAYER"
	arguments {
		int "targetId",
		Player "player",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Adds the specified player to the target list for the specified Mumble voice target ID.
</summary>
<param name="targetId">A Mumble voice target ID, ranging from 1..30 (inclusive).</param>
<param name="player">A game player index.</param>
	]]

native "MUMBLE_ADD_VOICE_TARGET_PLAYER_BY_SERVER_ID"
	arguments {
		int "targetId",
		int "serverId",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Adds the specified player to the target list for the specified Mumble voice target ID.
</summary>
<param name="targetId">A Mumble voice target ID, ranging from 1..30 (inclusive).</param>
<param name="serverId">The player's server id.</param>
	]]

native "MUMBLE_CLEAR_VOICE_TARGET"
	arguments {
		int "targetId",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Clears the target list for the specified Mumble voice target ID.
</summary>
<param name="targetId">A Mumble voice target ID, ranging from 1..30 (inclusive).</param>
	]]

native "MUMBLE_CLEAR_VOICE_TARGET_CHANNELS"
	arguments {
		int "targetId",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Clears channels from the target list for the specified Mumble voice target ID.
</summary>
<param name="targetId">A Mumble voice target ID, ranging from 1..30 (inclusive).</param>
	]]

native "MUMBLE_CLEAR_VOICE_TARGET_PLAYERS"
	arguments {
		int "targetId",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Clears players from the target list for the specified Mumble voice target ID.
</summary>
<param name="targetId">A Mumble voice target ID, ranging from 1..30 (inclusive).</param>
	]]

native "MUMBLE_CREATE_CHANNEL"
	arguments {
		int "id",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
<summary>
Create a permanent voice channel.
</summary>
<param name="id">ID of the channel.</param>
	]]

native "MUMBLE_GET_VOICE_CHANNEL_FROM_SERVER_ID"
	arguments {
		int "serverId",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
Returns the mumble voice channel from a player's server id.
</summary>
<param name="serverId">The player's server id.</param>
<returns>Int representing the identifier of the voice channel.</returns>
	]]

native "MUMBLE_IS_CONNECTED"
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
This native will return true if the user succesfully connected to the voice server.
If the user disabled the voice-chat setting it will return false.
</summary>
<returns>True if the player is connected to a mumble server.</returns>
	]]

native "MUMBLE_REMOVE_VOICE_CHANNEL_LISTEN"
	arguments {
		int "channel",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Stops listening to the specified channel.
</summary>
<param name="channel">A game voice channel ID.</param>
	]]

native "MUMBLE_SET_AUDIO_INPUT_DISTANCE"
	arguments {
		float "distance",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets the current input distance. The player will be able to talk to other players within this distance.
</summary>
<param name="distance">The input distance.</param>
	]]

native "MUMBLE_SET_AUDIO_OUTPUT_DISTANCE"
	arguments {
		float "distance",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets the current output distance. The player will be able to hear other players talking within this distance.
</summary>
<param name="distance">The output distance.</param>
	]]

native "MUMBLE_SET_SERVER_ADDRESS"
	arguments {
		charPtr "address",
		int "port",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Changes the Mumble server address to connect to, and reconnects to the new address.
</summary>
<param name="address">The address of the mumble server.</param>
<param name="port">The port of the mumble server.</param>
	]]

native "MUMBLE_SET_VOICE_TARGET"
	arguments {
		int "targetId",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets the current Mumble voice target ID to broadcast voice to.
</summary>
<param name="targetId">A Mumble voice target ID, ranging from 1..30 (inclusive). 0 disables voice targets, and 31 is server loopback.</param>
	]]

native "MUMBLE_SET_VOLUME_OVERRIDE"
	arguments {
		Player "player",
		float "volume",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Overrides the output volume for a particular player on Mumble. This will also bypass 3D audio and distance calculations. -1.0 to reset the override.

Set to -1.0 to reset the Volume override.
</summary>
<param name="player">A game player index.</param>
<param name="volume">The volume, ranging from 0.0 to 1.0 (or above).</param>
	]]

native "MUMBLE_SET_VOLUME_OVERRIDE_BY_SERVER_ID"
	arguments {
		int "serverId",
		float "volume",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Overrides the output volume for a particular player with the specified server id and player name on Mumble. This will also bypass 3D audio and distance calculations. -1.0 to reset the override.
</summary>
<param name="serverId">The player's server id.</param>
<param name="volume">The volume, ranging from 0.0 to 1.0 (or above).</param>
	]]

native "NETWORK_GET_ENTITY_FROM_NETWORK_ID"
	arguments {
		int "netId",
	}
	ns "CFX"
    apiset "server"
	returns "Entity"
	doc [[!
	]]

native "NETWORK_GET_ENTITY_OWNER"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "shared"
	returns "int"
	doc [[!
<summary>
Returns the owner ID of the specified entity.
</summary>
<param name="entity">The entity to get the owner for.</param>
<returns>On the server, the server ID of the entity owner. On the client, returns the player/slot ID of the entity owner.</returns>
	]]

native "NETWORK_GET_NETWORK_ID_FROM_ENTITY"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "NETWORK_GET_VOICE_PROXIMITY_OVERRIDE"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "Vector3"
	doc [[!
<param name="playerSrc">The player handle</param>
	]]

native "PERFORM_HTTP_REQUEST_INTERNAL"
	arguments {
		charPtr "requestData",
		int "requestDataLength",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "PROFILER_ENTER_SCOPE"
	arguments {
		charPtr "scopeName",
	}
	ns "CFX"
    apiset "shared"
	returns "void"
	doc [[!
<summary>
Scope entry for profiler.
</summary>
<param name="scopeName">Scope name.</param>
	]]

native "PROFILER_EXIT_SCOPE"
	ns "CFX"
    apiset "shared"
	returns "void"
	doc [[!
<summary>
Scope exit for profiler.
</summary>
	]]

native "PROFILER_IS_RECORDING"
	ns "CFX"
    apiset "shared"
	returns "BOOL"
	doc [[!
<summary>
Returns true if the profiler is active.
</summary>
<returns>True or false.</returns>
	]]

native "REGISTER_ARCHETYPES"
	arguments {
		func "factory",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.

Registers a set of archetypes with the game engine. These should match `CBaseArchetypeDef` class information from the game.
</summary>
<param name="factory">A function returning a list of archetypes.</param>
	]]

native "REGISTER_COMMAND"
	arguments {
		charPtr "commandName",
		func "handler",
		BOOL "restricted",
	}
	ns "CFX"
    apiset "shared"
	returns "void"
	doc [[!
<summary>
Registered commands can be executed by entering them in the client console (this works for client side and server side registered commands). Or by entering them in the server console/through an RCON client (only works for server side registered commands). Or if you use a supported chat resource, like the default one provided in the cfx-server-data repository, then you can enter the command in chat by prefixing it with a `/`.

Commands registered using this function can also be executed by resources, using the [`ExecuteCommand` native](#\_0x561C060B).

The restricted bool is not used on the client side. Permissions can only be checked on the server side, so if you want to limit your command with an ace permission automatically, make it a server command (by registering it in a server script).

**Example result**:

![](https://i.imgur.com/TaCnG09.png)
</summary>
<param name="commandName">The command you want to register.</param>
<param name="handler">A handler function that gets called whenever the command is executed.</param>
<param name="restricted">If this is a server command and you set this to true, then players will need the command.yourCommandName ace permission to execute this command.</param>
	]]

native "REGISTER_CONSOLE_LISTENER"
	arguments {
		func "listener",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
<summary>
Registers a listener for console output messages.
</summary>
<param name="listener">A function of `(channel: string, message: string) => void`. The message might contain `\n`.</param>
	]]

native "REGISTER_ENTITIES"
	arguments {
		func "factory",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.

Registers a set of entities with the game engine. These should match `CEntityDef` class information from the game.
At this time, this function **should not be used in a live environment**.
</summary>
<param name="factory">A function returning a list of entities.</param>
	]]

native "REGISTER_FONT_FILE"
	arguments {
		charPtr "fileName",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Registers a specified .gfx file as GFx font library.
The .gfx file has to be registered with the streamer already.
</summary>
<param name="fileName">The name of the .gfx file, without extension.</param>
	]]

native "REGISTER_FONT_ID"
	arguments {
		charPtr "fontName",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
Registers a specified font name for use with text draw commands.
</summary>
<param name="fontName">The name of the font in the GFx font library.</param>
<returns>An index to use with [SET_TEXT_FONT](#\_0x66E0276CC5F6B9DA) and similar natives.</returns>
	]]

native "REGISTER_KEY_MAPPING"
	arguments {
		charPtr "commandString",
		charPtr "description",
		charPtr "defaultMapper",
		charPtr "defaultParameter",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Registers a key mapping for the current resource.

See the related [cookbook post](https://cookbook.fivem.net/2020/01/06/using-the-new-console-key-bindings/) for more information.
</summary>
<param name="commandString">The command to execute, and the identifier of the binding.</param>
<param name="description">A description for in the settings menu.</param>
<param name="defaultMapper">The mapper ID to use for the default binding, e.g. `keyboard`.</param>
<param name="defaultParameter">The IO parameter ID to use for the default binding, e.g. `f3`.</param>
	]]

native "REGISTER_NUI_CALLBACK_TYPE"
	arguments {
		charPtr "callbackType",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "REGISTER_RESOURCE_AS_EVENT_HANDLER"
	arguments {
		charPtr "eventName",
	}
	ns "CFX"
    apiset "shared"
	returns "void"
	doc [[!
<summary>
An internal function which allows the current resource's HLL script runtimes to receive state for the specified event.
</summary>
<param name="eventName">An event name, or "\*" to disable HLL event filtering for this resource.</param>
	]]

native "REGISTER_RESOURCE_ASSET"
	arguments {
		charPtr "resourceName",
		charPtr "fileName",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
<summary>
**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.

Registers a cached resource asset with the resource system, similar to the automatic scanning of the `stream/` folder.
</summary>
<param name="resourceName">The resource to add the asset to.</param>
<param name="fileName">A file name in the resource.</param>
<returns>A cache string to pass to `REGISTER_STREAMING_FILE_FROM_CACHE` on the client.</returns>
	]]

native "REGISTER_RESOURCE_BUILD_TASK_FACTORY"
	arguments {
		charPtr "factoryId",
		func "factoryFn",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
<summary>
Registers a build task factory for resources.
The function should return an object (msgpack map) with the following fields:

```
{
// returns whether the specific resource should be built
shouldBuild = func(resourceName: string): bool,

// asynchronously start building the specific resource.
// call cb when completed
build = func(resourceName: string, cb: func(success: bool, status: string): void): void
}
```
</summary>
<param name="factoryId">The identifier for the build task.</param>
<param name="factoryFn">The factory function.</param>
	]]

native "REGISTER_STREAMING_FILE_FROM_CACHE"
	arguments {
		charPtr "resourceName",
		charPtr "fileName",
		charPtr "cacheString",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.

Registers a dynamic streaming asset from the server with the GTA streaming module system.
</summary>
<param name="resourceName">The resource to add the asset to.</param>
<param name="fileName">A file name in the resource.</param>
<param name="cacheString">The string returned from `REGISTER_RESOURCE_ASSET` on the server.</param>
	]]

native "REGISTER_STREAMING_FILE_FROM_KVS"
	arguments {
		charPtr "kvsKey",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.

Registers a KVP value as an asset with the GTA streaming module system. This function currently won't work.
</summary>
<param name="kvsKey">The KVP key in the current resource to register as an asset.</param>
	]]

native "REGISTER_STREAMING_FILE_FROM_URL"
	arguments {
		charPtr "registerAs",
		charPtr "url",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.

Registers a file from an URL as a streaming asset in the GTA streaming subsystem. This will asynchronously register the asset, and caching is done based on the URL itself - cache headers are ignored.

Use `IS_STREAMING_FILE_READY` to check if the asset has been registered successfully.
</summary>
<param name="registerAs">The file name to register as, for example `asset.ydr`.</param>
<param name="url">The URL to fetch the asset from.</param>
	]]

native "REMOVE_REPLACE_TEXTURE"
	arguments {
		charPtr "origTxd",
		charPtr "origTxn",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Experimental natives, please do not use in a live environment.
</summary>
	]]

native "REQUEST_PLAYER_COMMERCE_SESSION"
	arguments {
		charPtr "playerSrc",
		int "skuId",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
<summary>
Requests the specified player to buy the passed SKU. This'll pop up a prompt on the client, which upon acceptance
will open the browser prompting further purchase details.
</summary>
<param name="playerSrc">The player handle</param>
<param name="skuId">The ID of the SKU.</param>
	]]

native "RESET_FLY_THROUGH_WINDSCREEN_PARAMS"
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Resets parameters which is used by the game for checking is ped needs to fly through windscreen after a crash to default values.
</summary>
	]]

native "RESET_MAP_ZOOM_DATA_LEVEL"
	arguments {
		int "index",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Resets values from the zoom level data by index to defaults from mapzoomdata.meta.
</summary>
<param name="index">Zoom level index.</param>
	]]

native "SAVE_RESOURCE_FILE"
	arguments {
		charPtr "resourceName",
		charPtr "fileName",
		charPtr "data",
		int "dataLength",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
<summary>
Writes the specified data to a file in the specified resource.
Using a length of `-1` will automatically detect the length assuming the data is a C string.
</summary>
<param name="resourceName">The name of the resource.</param>
<param name="fileName">The name of the file.</param>
<param name="data">The data to write to the file.</param>
<param name="dataLength">The length of the written data.</param>
<returns>A value indicating if the write succeeded.</returns>
	]]

native "SCHEDULE_RESOURCE_TICK"
	arguments {
		charPtr "resourceName",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
<summary>
Schedules the specified resource to run a tick as soon as possible, bypassing the server's fixed tick rate.
</summary>
<param name="resourceName">The resource to tick.</param>
	]]

native "SEND_DUI_MESSAGE"
	arguments {
		long "duiObject",
		charPtr "jsonString",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sends a message to the specific DUI root page. This is similar to SEND_NUI_MESSAGE.
</summary>
<param name="duiObject">The DUI browser handle.</param>
<param name="jsonString">The message, encoded as JSON.</param>
	]]

native "SEND_DUI_MOUSE_DOWN"
	arguments {
		long "duiObject",
		charPtr "button",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Injects a 'mouse down' event for a DUI object. Coordinates are expected to be set using SEND_DUI_MOUSE_MOVE.
</summary>
<param name="duiObject">The DUI browser handle.</param>
<param name="button">Either `'left'`, `'middle'` or `'right'`.</param>
	]]

native "SEND_DUI_MOUSE_MOVE"
	arguments {
		long "duiObject",
		int "x",
		int "y",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Injects a 'mouse move' event for a DUI object. Coordinates are in browser space.
</summary>
<param name="duiObject">The DUI browser handle.</param>
<param name="x">The mouse X position.</param>
<param name="y">The mouse Y position.</param>
	]]

native "SEND_DUI_MOUSE_UP"
	arguments {
		long "duiObject",
		charPtr "button",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Injects a 'mouse up' event for a DUI object. Coordinates are expected to be set using SEND_DUI_MOUSE_MOVE.
</summary>
<param name="duiObject">The DUI browser handle.</param>
<param name="button">Either `'left'`, `'middle'` or `'right'`.</param>
	]]

native "SEND_DUI_MOUSE_WHEEL"
	arguments {
		long "duiObject",
		int "deltaY",
		int "deltaX",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Injects a 'mouse wheel' event for a DUI object.
</summary>
<param name="duiObject">The DUI browser handle.</param>
<param name="deltaY">The wheel Y delta.</param>
<param name="deltaX">The wheel X delta.</param>
	]]

native "SEND_LOADING_SCREEN_MESSAGE"
	arguments {
		charPtr "jsonString",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
Sends a message to the `loadingScreen` NUI frame, which contains the HTML page referenced in `loadscreen` resources.
</summary>
<param name="jsonString">The JSON-encoded message.</param>
<returns>A success value.</returns>
	]]

native "SEND_NUI_MESSAGE"
	arguments {
		charPtr "jsonString",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "SET_CONVAR"
	arguments {
		charPtr "varName",
		charPtr "value",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "SET_CONVAR_REPLICATED"
	arguments {
		charPtr "varName",
		charPtr "value",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "SET_CONVAR_SERVER_INFO"
	arguments {
		charPtr "varName",
		charPtr "value",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "SET_DISCORD_APP_ID"
	arguments {
		charPtr "appId",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
This native sets the app id for the discord rich presence implementation.
</summary>
<param name="appId">A valid Discord API App Id, can be generated at https://discordapp.com/developers/applications/</param>
	]]

native "SET_DISCORD_RICH_PRESENCE_ASSET"
	arguments {
		charPtr "assetName",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
This native sets the image asset for the discord rich presence implementation.
</summary>
<param name="assetName">The name of a valid asset registered on Discordapp's developer dashboard. note that the asset has to be registered under the same discord API application set using the SET_DISCORD_APP_ID native.</param>
	]]

native "SET_DISCORD_RICH_PRESENCE_ASSET_SMALL"
	arguments {
		charPtr "assetName",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
This native sets the small image asset for the discord rich presence implementation.
</summary>
<param name="assetName">The name of a valid asset registered on Discordapp's developer dashboard. Note that the asset has to be registered under the same discord API application set using the SET_DISCORD_APP_ID native.</param>
	]]

native "SET_DISCORD_RICH_PRESENCE_ASSET_SMALL_TEXT"
	arguments {
		charPtr "text",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
This native sets the hover text of the small image asset for the discord rich presence implementation.
</summary>
<param name="text">Text to be displayed when hovering over small image asset. Note that you must also set a valid small image asset using the SET_DISCORD_RICH_PRESENCE_ASSET_SMALL native.</param>
	]]

native "SET_DISCORD_RICH_PRESENCE_ASSET_TEXT"
	arguments {
		charPtr "text",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
This native sets the hover text of the image asset for the discord rich presence implementation.
</summary>
<param name="text">Text to be displayed when hovering over image asset. Note that you must also set a valid image asset using the SET_DISCORD_RICH_PRESENCE_ASSET native.</param>
	]]

native "SET_DUI_URL"
	arguments {
		long "duiObject",
		charPtr "url",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Navigates the specified DUI browser to a different URL.
</summary>
<param name="duiObject">The DUI browser handle.</param>
<param name="url">The new URL.</param>
	]]

native "SET_ENTITY_DISTANCE_CULLING_RADIUS"
	arguments {
		Entity "entity",
		float "radius",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
<summary>
It overrides the default distance culling radius of an entity. Set to `0.0` to reset.
If you want to interact with an entity outside of your players' scopes set the radius to a huge number.
</summary>
<param name="entity">The entity handle to override the distance culling radius.</param>
<param name="radius">The new distance culling radius.</param>
	]]

native "SET_FLY_THROUGH_WINDSCREEN_PARAMS"
	arguments {
		float "vehMinSpeed",
		float "unkMinSpeed",
		float "unkModifier",
		float "minDamage",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
Sets some in-game parameters which is used for checks is ped needs to fly through windscreen after a crash.
</summary>
<param name="vehMinSpeed">Vehicle minimum speed (default 35.0).</param>
<param name="unkMinSpeed">Unknown minimum speed (default 40.0).</param>
<param name="unkModifier">Unknown modifier (default 17.0).</param>
<param name="minDamage">Minimum damage (default 2000.0).</param>
<returns>A bool indicating if parameters was set successfully.</returns>
	]]

native "SET_GAME_TYPE"
	arguments {
		charPtr "gametypeName",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "SET_HANDLING_FIELD"
	arguments {
		charPtr "vehicle",
		charPtr "class_",
		charPtr "fieldName",
		Any "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
Example: `SetHandlingField('AIRTUG', 'CHandlingData', 'fSteeringLock', 360.0)`
</summary>
<param name="vehicle">The vehicle class to set data for.</param>
<param name="class_">The handling class to set. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to set. These match the keys in `handling.meta`.</param>
<param name="value">The value to set.</param>
	]]

native "SET_HANDLING_FLOAT"
	arguments {
		charPtr "vehicle",
		charPtr "class_",
		charPtr "fieldName",
		float "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
Example: `SetHandlingFloat('AIRTUG', 'CHandlingData', 'fSteeringLock', 360.0)`
</summary>
<param name="vehicle">The vehicle class to set data for.</param>
<param name="class_">The handling class to set. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to set. These match the keys in `handling.meta`.</param>
<param name="value">The floating-point value to set.</param>
	]]

native "SET_HANDLING_INT"
	arguments {
		charPtr "vehicle",
		charPtr "class_",
		charPtr "fieldName",
		int "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
</summary>
<param name="vehicle">The vehicle class to set data for.</param>
<param name="class_">The handling class to set. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to set. These match the keys in `handling.meta`.</param>
<param name="value">The integer value to set.</param>
	]]

native "SET_HANDLING_VECTOR"
	arguments {
		charPtr "vehicle",
		charPtr "class_",
		charPtr "fieldName",
		Vector3 "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
Example: `SetHandlingVector('AIRTUG', 'CHandlingData', 'vecCentreOfMassOffset', vector3(0.0, 0.0, -5.0))`
</summary>
<param name="vehicle">The vehicle class to set data for.</param>
<param name="class_">The handling class to set. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to set. These match the keys in `handling.meta`.</param>
<param name="value">The Vector3 value to set.</param>
	]]

native "SET_HTTP_HANDLER"
	arguments {
		func "handler",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "SET_INTERIOR_PORTAL_CORNER_POSITION"
	arguments {
		int "interiorId",
		int "portalIndex",
		int "cornerIndex",
		float "posX",
		float "posY",
		float "posZ",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<param name="interiorId">The target interior.</param>
<param name="portalIndex">Interior portal index.</param>
<param name="cornerIndex">Interior corner index.</param>
	]]

native "SET_INTERIOR_PORTAL_FLAG"
	arguments {
		int "interiorId",
		int "portalIndex",
		int "flag",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<param name="interiorId">The target interior.</param>
<param name="portalIndex">Interior portal index.</param>
<param name="flag">New flag value.</param>
	]]

native "SET_INTERIOR_PORTAL_ROOM_FROM"
	arguments {
		int "interiorId",
		int "portalIndex",
		int "roomFrom",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<param name="interiorId">The target interior.</param>
<param name="portalIndex">Interior portal index.</param>
<param name="roomFrom">New value.</param>
	]]

native "SET_INTERIOR_PORTAL_ROOM_TO"
	arguments {
		int "interiorId",
		int "portalIndex",
		int "roomTo",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<param name="interiorId">The target interior.</param>
<param name="portalIndex">Interior portal index.</param>
<param name="roomTo">New value.</param>
	]]

native "SET_INTERIOR_ROOM_EXTENTS"
	arguments {
		int "interiorId",
		int "roomIndex",
		float "bbMinX",
		float "bbMinY",
		float "bbMinZ",
		float "bbMaxX",
		float "bbMaxY",
		float "bbMaxZ",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<param name="interiorId">The target interior.</param>
<param name="roomIndex">Interior room index.</param>
	]]

native "SET_INTERIOR_ROOM_FLAG"
	arguments {
		int "interiorId",
		int "roomIndex",
		int "flag",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<param name="interiorId">The target interior.</param>
<param name="roomIndex">Interior room index.</param>
<param name="flag">New flag value.</param>
	]]

native "SET_INTERIOR_ROOM_TIMECYCLE"
	arguments {
		int "interiorId",
		int "roomIndex",
		int "timecycleHash",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<param name="interiorId">The target interior.</param>
<param name="roomIndex">Interior room index.</param>
<param name="timecycleHash">Timecycle hash.</param>
	]]

native "SET_MANUAL_SHUTDOWN_LOADING_SCREEN_NUI"
	arguments {
		BOOL "manualShutdown",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets whether or not `SHUTDOWN_LOADING_SCREEN` automatically shuts down the NUI frame for the loading screen. If this is enabled,
you will have to manually invoke `SHUTDOWN_LOADING_SCREEN_NUI` whenever you want to hide the NUI loading screen.
</summary>
<param name="manualShutdown">TRUE to manually shut down the loading screen NUI.</param>
	]]

native "SET_MAP_NAME"
	arguments {
		charPtr "mapName",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "SET_MAP_ZOOM_DATA_LEVEL"
	arguments {
		int "index",
		float "zoomScale",
		float "zoomSpeed",
		float "scrollSpeed",
		float "tilesX",
		float "tilesY",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets values to the zoom level data by index.
</summary>
<param name="index">Zoom level index.</param>
<param name="zoomScale">fZoomScale value.</param>
<param name="zoomSpeed">fZoomSpeed value.</param>
<param name="scrollSpeed">fScrollSpeed value.</param>
<param name="tilesX">vTiles X.</param>
<param name="tilesY">vTiles Y.</param>
	]]

native "SET_MILLISECONDS_PER_GAME_MINUTE"
	arguments {
		int "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Overrides how many real ms are equal to one game minute.
A setter for [`GetMillisecondsPerGameMinute`](#\_0x2F8B4D1C595B11DB).
</summary>
<param name="value">Milliseconds.</param>
	]]

native "SET_MINIMAP_CLIP_TYPE"
	arguments {
		int "type",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets the type for the minimap blip clipping object to be either rectangular or rounded.
</summary>
<param name="type">0 for rectangular, 1 for rounded.</param>
	]]

native "SET_MINIMAP_COMPONENT_POSITION"
	arguments {
		charPtr "name",
		charPtr "alignX",
		charPtr "alignY",
		float "posX",
		float "posY",
		float "sizeX",
		float "sizeY",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Overrides the minimap component data (from `common:/data/ui/frontend.xml`) for a specified component.
</summary>
<param name="name">The name of the minimap component to override.</param>
<param name="alignX">Equivalent to the `alignX` field in `frontend.xml`.</param>
<param name="alignY">Equivalent to the `alignY` field in `frontend.xml`.</param>
<param name="posX">Equivalent to the `posX` field in `frontend.xml`.</param>
<param name="posY">Equivalent to the `posY` field in `frontend.xml`.</param>
<param name="sizeX">Equivalent to the `sizeX` field in `frontend.xml`.</param>
<param name="sizeY">Equivalent to the `sizeY` field in `frontend.xml`.</param>
	]]

native "SET_MINIMAP_OVERLAY_DISPLAY"
	arguments {
		int "miniMap",
		float "x",
		float "y",
		float "xScale",
		float "yScale",
		float "alpha",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets the display info for a minimap overlay.
</summary>
<param name="miniMap">The minimap overlay ID.</param>
<param name="x">The X position for the overlay. This is equivalent to a game coordinate X.</param>
<param name="y">The Y position for the overlay. This is equivalent to a game coordinate Y, except that it's inverted (gfxY = -gameY).</param>
<param name="xScale">The X scale for the overlay. This is equivalent to the Flash \_xscale property, therefore 100 = 100%.</param>
<param name="yScale">The Y scale for the overlay. This is equivalent to the Flash \_yscale property.</param>
<param name="alpha">The alpha value for the overlay. This is equivalent to the Flash \_alpha property, therefore 100 = 100%.</param>
	]]

native "SET_MODEL_HEADLIGHT_CONFIGURATION"
	arguments {
		Hash "modelHash",
		float "ratePerSecond",
		float "headlightRotation",
		BOOL "invertRotation",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_NUI_FOCUS"
	arguments {
		BOOL "hasFocus",
		BOOL "hasCursor",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_NUI_FOCUS_KEEP_INPUT"
	arguments {
		BOOL "keepInput",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_PLAYER_TALKING_OVERRIDE"
	arguments {
		Player "player",
		BOOL "state",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
the status of default voip system. It affects on `NETWORK_IS_PLAYER_TALKING` and `mp_facial` animation.
This function doesn't need to be called every frame, it works like a switcher.
</summary>
<param name="player">The target player.</param>
<param name="state">Overriding state.</param>
	]]

native "SET_RESOURCE_KVP"
	arguments {
		charPtr "key",
		charPtr "value",
	}
	ns "CFX"
    apiset "shared"
	returns "void"
	doc [[!
	]]

native "SET_RESOURCE_KVP_FLOAT"
	arguments {
		charPtr "key",
		float "value",
	}
	ns "CFX"
    apiset "shared"
	returns "void"
	doc [[!
	]]

native "SET_RESOURCE_KVP_INT"
	arguments {
		charPtr "key",
		int "value",
	}
	ns "CFX"
    apiset "shared"
	returns "void"
	doc [[!
	]]

native "SET_RICH_PRESENCE"
	arguments {
		charPtr "presenceState",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets the player's rich presence detail state for social platform providers to a specified string.
</summary>
<param name="presenceState">The rich presence string to set.</param>
	]]

native "SET_RUNTIME_TEXTURE_ARGB_DATA"
	arguments {
		long "tex",
		charPtr "buffer",
		int "length",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "SET_RUNTIME_TEXTURE_PIXEL"
	arguments {
		long "tex",
		int "x",
		int "y",
		int "r",
		int "g",
		int "b",
		int "a",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a pixel in the specified runtime texture. This will have to be committed using `COMMIT_RUNTIME_TEXTURE` to have any effect.
</summary>
<param name="tex">A handle to the runtime texture.</param>
<param name="x">The X position of the pixel to change.</param>
<param name="y">The Y position of the pixel to change.</param>
<param name="r">The new R value (0-255).</param>
<param name="g">The new G value (0-255).</param>
<param name="b">The new B value (0-255).</param>
<param name="a">The new A value (0-255).</param>
	]]

native "SET_SNAKEOIL_FOR_ENTRY"
	arguments {
		charPtr "name",
		charPtr "path",
		charPtr "data",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_STATE_BAG_VALUE"
	arguments {
		charPtr "bagName",
		charPtr "keyName",
		charPtr "valueData",
		int "valueLength",
		BOOL "replicated",
	}
	ns "CFX"
    apiset "shared"
	returns "void"
	doc [[!
<summary>
Internal function for setting a state bag value.
</summary>
	]]

native "SET_TEXT_CHAT_ENABLED"
	arguments {
		BOOL "enabled",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "SET_VEHICLE_ALARM_TIME_LEFT"
	arguments {
		Vehicle "vehicle",
		int "time",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_AUTO_REPAIR_DISABLED"
	arguments {
		Vehicle "vehicle",
		BOOL "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Disables the vehicle from being repaired when a vehicle extra is enabled.
</summary>
<param name="vehicle">The vehicle to set disable auto vehicle repair.</param>
<param name="value">Setting the value to  true prevents the vehicle from being repaired when a extra is enabled. Setting the value to false allows the vehicle from being repaired when a extra is enabled.</param>
	]]

native "SET_VEHICLE_CLUTCH"
	arguments {
		Vehicle "vehicle",
		float "clutch",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_CURRENT_RPM"
	arguments {
		Vehicle "vehicle",
		float "rpm",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_ENGINE_TEMPERATURE"
	arguments {
		Vehicle "vehicle",
		float "temperature",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_FUEL_LEVEL"
	arguments {
		Vehicle "vehicle",
		float "level",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_GRAVITY_AMOUNT"
	arguments {
		Vehicle "vehicle",
		float "gravity",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_HANDLING_FIELD"
	arguments {
		Vehicle "vehicle",
		charPtr "class_",
		charPtr "fieldName",
		Any "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_FIELD`, this might require some experimentation.
Example: `SetVehicleHandlingField(vehicle, 'CHandlingData', 'fSteeringLock', 360.0)`
</summary>
<param name="vehicle">The vehicle to set data for.</param>
<param name="class_">The handling class to set. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to set. These match the keys in `handling.meta`.</param>
<param name="value">The value to set.</param>
	]]

native "SET_VEHICLE_HANDLING_FLOAT"
	arguments {
		Vehicle "vehicle",
		charPtr "class_",
		charPtr "fieldName",
		float "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_FLOAT`, this might require some experimentation.
Example: `SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fSteeringLock', 360.0)`
</summary>
<param name="vehicle">The vehicle to set data for.</param>
<param name="class_">The handling class to set. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to set. These match the keys in `handling.meta`.</param>
<param name="value">The floating-point value to set.</param>
	]]

native "SET_VEHICLE_HANDLING_INT"
	arguments {
		Vehicle "vehicle",
		charPtr "class_",
		charPtr "fieldName",
		int "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_INT`, this might require some experimentation.
</summary>
<param name="vehicle">The vehicle to set data for.</param>
<param name="class_">The handling class to set. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to set. These match the keys in `handling.meta`.</param>
<param name="value">The integer value to set.</param>
	]]

native "SET_VEHICLE_HANDLING_VECTOR"
	arguments {
		Vehicle "vehicle",
		charPtr "class_",
		charPtr "fieldName",
		Vector3 "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_VECTOR`, this might require some experimentation.
</summary>
<param name="vehicle">The vehicle to set data for.</param>
<param name="class_">The handling class to set. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to set. These match the keys in `handling.meta`.</param>
<param name="value">The Vector3 value to set.</param>
	]]

native "SET_VEHICLE_HIGH_GEAR"
	arguments {
		Vehicle "vehicle",
		int "gear",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_OIL_LEVEL"
	arguments {
		Vehicle "vehicle",
		float "level",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_STEERING_ANGLE"
	arguments {
		Vehicle "vehicle",
		float "angle",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_STEERING_SCALE"
	arguments {
		Vehicle "vehicle",
		float "scale",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_TURBO_PRESSURE"
	arguments {
		Vehicle "vehicle",
		float "pressure",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_WHEEL_HEALTH"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
		float "health",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_WHEEL_RIM_COLLIDER_SIZE"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
		float "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Not sure what this changes, probably determines physical rim size in case the tire is blown.
</summary>
<param name="vehicle">The vehicle to obtain data for.</param>
<param name="wheelIndex">Index of wheel, 0-3.</param>
<param name="value">Size of rim collider.</param>
	]]

native "SET_VEHICLE_WHEEL_SIZE"
	arguments {
		Vehicle "vehicle",
		float "size",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
Sets vehicle's wheels' size (size is the same for all the wheels, cannot get/set specific wheel of vehicle).
Only works on non-default wheels.
Returns whether change was successful (can be false if trying to set size for non-default wheels).
</summary>
<param name="vehicle">The vehicle to set data for.</param>
<param name="size">Size of the wheels (usually between 0.5 and 1.5 is reasonable).</param>
<returns>Bool - whether change was successful or not</returns>
	]]

native "SET_VEHICLE_WHEEL_TIRE_COLLIDER_SIZE"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
		float "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Use along with SetVehicleWheelSize to resize the wheels (this native sets the collider size affecting physics while SetVehicleWheelSize will change visual size).
</summary>
<param name="vehicle">The vehicle to obtain data for.</param>
<param name="wheelIndex">Index of wheel, 0-3.</param>
<param name="value">Radius of tire collider.</param>
	]]

native "SET_VEHICLE_WHEEL_TIRE_COLLIDER_WIDTH"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
		float "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Use along with SetVehicleWheelWidth to resize the wheels (this native sets the collider width affecting physics while SetVehicleWheelWidth will change visual width).
</summary>
<param name="vehicle">The vehicle to obtain data for.</param>
<param name="wheelIndex">Index of wheel, 0-3.</param>
<param name="value">Width of tire collider.</param>
	]]

native "SET_VEHICLE_WHEEL_WIDTH"
	arguments {
		Vehicle "vehicle",
		float "width",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
Sets vehicle's wheels' width (width is the same for all the wheels, cannot get/set specific wheel of vehicle).
Only works on non-default wheels.
Returns whether change was successful (can be false if trying to set width for non-default wheels).
</summary>
<param name="vehicle">The vehicle to set data for.</param>
<param name="width">Width of the wheels (usually between 0.1 and 1.5 is reasonable).</param>
<returns>Bool - whether change was successful or not</returns>
	]]

native "SET_VEHICLE_WHEEL_X_OFFSET"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
		float "offset",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Adjusts the offset of the specified wheel relative to the wheel's axle center.
Needs to be called every frame in order to function properly, as GTA will reset the offset otherwise.
This function can be especially useful to set the track width of a vehicle, for example:

```
function SetVehicleFrontTrackWidth(vehicle, width)
SetVehicleWheelXOffset(vehicle, 0, -width/2)
SetVehicleWheelXOffset(vehicle, 1, width/2)
end
```
</summary>
	]]

native "SET_VEHICLE_WHEEL_Y_ROTATION"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
		float "value",
	}
	alias "SET_VEHICLE_WHEEL_XROT"
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_WHEELIE_STATE"
	arguments {
		Vehicle "vehicle",
		int "state",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Example script: https://pastebin.com/J6XGbkCW

List of known states:

```
1: Not wheeling.
65: Vehicle is ready to do wheelie (burnouting).
129: Vehicle is doing wheelie.
```
</summary>
<param name="vehicle">Vehicle</param>
<param name="state">Wheelie state</param>
	]]

native "SET_VISUAL_SETTING_FLOAT"
	arguments {
		charPtr "name",
		float "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Overrides a floating point value from `visualsettings.dat` temporarily.
</summary>
<param name="name">The name of the value to set, such as `pedLight.color.red`.</param>
<param name="value">The value to write.</param>
	]]

native "SHUTDOWN_LOADING_SCREEN_NUI"
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Shuts down the `loadingScreen` NUI frame, similarly to `SHUTDOWN_LOADING_SCREEN`.
</summary>
	]]

native "START_FIND_KVP"
	arguments {
		charPtr "prefix",
	}
	ns "CFX"
    apiset "shared"
	returns "int"
	doc [[!
	]]

native "START_RESOURCE"
	arguments {
		charPtr "resourceName",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
	]]

native "STOP_RESOURCE"
	arguments {
		charPtr "resourceName",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
	]]

native "TEMP_BAN_PLAYER"
	arguments {
		charPtr "playerSrc",
		charPtr "reason",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "TRIGGER_CLIENT_EVENT_INTERNAL"
	arguments {
		charPtr "eventName",
		charPtr "eventTarget",
		charPtr "eventPayload",
		int "payloadLength",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
<summary>
The backing function for TriggerClientEvent.
</summary>
	]]

native "TRIGGER_EVENT_INTERNAL"
	arguments {
		charPtr "eventName",
		charPtr "eventPayload",
		int "payloadLength",
	}
	ns "CFX"
    apiset "shared"
	returns "void"
	doc [[!
<summary>
The backing function for TriggerEvent.
</summary>
	]]

native "TRIGGER_LATENT_CLIENT_EVENT_INTERNAL"
	arguments {
		charPtr "eventName",
		charPtr "eventTarget",
		charPtr "eventPayload",
		int "payloadLength",
		int "bps",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
<summary>
The backing function for TriggerLatentClientEvent.
</summary>
	]]

native "TRIGGER_LATENT_SERVER_EVENT_INTERNAL"
	arguments {
		charPtr "eventName",
		charPtr "eventPayload",
		int "payloadLength",
		int "bps",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
The backing function for TriggerLatentServerEvent.
</summary>
	]]

native "TRIGGER_SERVER_EVENT_INTERNAL"
	arguments {
		charPtr "eventName",
		charPtr "eventPayload",
		int "payloadLength",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
The backing function for TriggerServerEvent.
</summary>
	]]

native "VERIFY_PASSWORD_HASH"
	arguments {
		charPtr "password",
		charPtr "hash",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
	]]

native "WAS_EVENT_CANCELED"
	ns "CFX"
    apiset "shared"
	returns "BOOL"
	doc [[!
<summary>
Returns whether or not the currently executing event was canceled.
</summary>
<returns>A boolean.</returns>
	]]
