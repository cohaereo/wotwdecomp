#pragma once
#include <types.h>

class CAudio {
public:
	void GetBankForCharacter(u8);
	void StartFeSound(int);
	void StopFeLevelSound(void);
	void Pause(void);
	void Unpause(void);
	void SetMasterVolumes(f32, f32);
	void StartSting(u8);
	void FeLoad(void);
	void LoadAndInitMusic(bool);
	void StartMusic(void);
	void StopMusic(void);
	void StartLevelSound(int);
	void StartGenericSound(int);
	void StartCommentarySound(int);
	void StartSoundFromBank(int, u8);
	void StartGeneralCharacterSound(int, u8);
	void IsEventActive(void *);
	void StopEvent(void *);
};

class CBanquetSE {
public:
	void LoadAndInitialiseData(void);
};

class C2DSprite {
public:
	void setCurrentShader(char *);
	void setGDS(PSR_GDS *);
};

class FE_CLabel {
public:
	void Render(void);
};

class FE_CLevel {
public:
	void SetSky(bool);
	void selectNextLevel(f32, f32, f32);
};

class CFrontEnd {
public:
	void InitialiseMPEG(void);
	void Initialise(u8, u8);
	void LoadData(u8);
	void LoadLoadingScreenData(void);
	void setBackground(BACKGROUNDS);
	void Shutdown(void);
};

class CCamera {
public:
	void Initialise(void);
	void StartShake(f32, u16, u8);
	void SetLookatPoint(void);
	void AddControlPoint(Vec3F *, Vec3F *, bool);
	void RemoveControlPoint(u8);
	void CutImmediately(f32);
	void UpdateLocalControls(void);
	void RemoveBoxingRingExtraControls(void);
};

class CEnvironment {
public:
	void UpdateGravityVector(Vec3F *);
	void IsSphereInCrusha(COL_SPHERE *);
	void DoPreThrowCollisionCheck(Vec3F *, Vec3F *, f32);
	void ENV_DoLandscapeCollisions(COL_SPHERE *, Vec3F *, bool, bool, u8, u32 *, u8 *, Vec3F *, bool);
	void ENV_DoLandscapeCollisionsWithPlayerPlayerTest(COL_SPHERE *, Vec3F *, bool, bool, u8, u32 *, u8 *, Vec3F *, bool, COL_SPHERE *, u8, bool);
	void ENV_DoPlayerCollisionTest(COL_SPHERE *, Vec3F *, COL_SPHERE *, Vec3F *, Vec3F *, u8, Vec3F *, bool);
	void IsRespawnPointFree(Vec3F *);
	void InformGeneratorsOfObjDestruction(u8);
	void ProcessPropGenerators(void);
	void ProcessWeaponGenerators(void);
	void ProcessMysteryGeneration(void);
	void CreateMystery(Vec3F *);
	void CreateLaidMine(Vec3F *, Vec3F *, Vec3F *);
	void CreateCostumeToken(Vec3F *, Vec3F *);
	void InitLightingEnvironment(u8);
	void ActivateAllObjects(void);
	void DectivateAllObjects(void);
	void LoadAndInitialise(u8);
	void Reset(void);
	void Render(void);
	void LoadObjectRenderInfo(u8, u8 *, u8);
	void ConstructObjectColTri(OBJECT *, Vec3F *, Vec3F *);
	void ActivateObject(u8, u8, Vec3F *, Vec3F *, void (*)(Vec3F *), u8);
	void DeactivateObject(u8);
	void DestroyObject(u8, u8, bool);
	void ObjectInRange(Vec3F *, f32);
	void ProjectileObjectHitsOtherObject(u8);
	void PickupObject(u8, u8);
	void HeadswapObject(u8, u8);
	void PushObject(u8, u8, Vec3F *);
	void SetHeldObjectMatrix(u8, PSR_MATRIX *);
	void UseHeldWeapon(u8);
	void CalcThrowVelocity(Vec3F *, u8);
	void CreateRobotCatFireball(u8, Vec3F *, Vec3F *, u8);
	void DestroyClosestMines(u8, Vec3F *, f32);
	void LayMine(u8, Vec3F *, Vec3F *, f32);
	void ThrowObject(u8, u8, u8, Vec3F *, Vec3F *, u8);
	void DropObject(u8, Vec3F *);
	void HowManyAvailableObjects(u8);
	void IsObjectABomb(OBJECT *);
	void RenderObjects(void);
	void RenderObjectsDebugShit(void);
};

class CHazards {
public:
	void ResetFlamers(u8);
	void KillAllLevelFlamers(void);
	void UpdateFlamerPosition(u8, Vec3F *, Vec3F *);
	void SwitchDeadFlamerOn(u8);
	void DeactivateFlamer(u8);
	void ActivateFlamer(u8);
	void DoPlayerFlamerCollision(COL_SPHERE *, Vec3F *);
	void RenderHazards(void);
};

class CWeakTerrain {
public:
	void ResetLabLift(f32, f32);
	void CalculateWeakTerrainCentre(u8, Vec3F *, Vec3F *);
	void GetCostumeCharacter(u8, u8);
	void LoadWeakTerrainGFX(u8);
	void CreateWeakTerrainFallingObject(u8);
	void ResetWeakTerrain(void);
	void WeakenTerrainPiece(u8, u8, u8);
	void ProcessWeakTerrain(void);
	void RenderWeakTerrain(void);
};

class CPlayerAnim {
public:
	void AnticipateHit(f32);
	void DecharOnCorrectFrame(void);
	void StartNewAnim(u8);
	void Initialise(Vec3F *, Vec3F *, Vec3F *, PLYR_BASIC_INFO *, u8);
	void Reset(void);
	void IsThrowAnimReadyToReleaseObject(void);
	void IsCurrentAttackKicking(void);
	void SetCurrentAttackType(void);
	void DoesAttackConnect(void);
	void PlayerHasFinishedIntro(void);
	void UpdateRotateToFaceOtherPlayer(void);
	void SpinByAngle(f32);
	void StartRotationToFaceOtherPlayer(f32);
	void StartRotationToFacePosition(Vec3F *, f32);
	void StartRotationToFaceAngle(f32);
	void DetermineFinalSkeletonMatrices(void);
	void FilterInvalidInputs(unsigned long);
	void IsPlayerInRangeForGrab(void);
	void ProcessExternalInteractions(u8);
	void ProcessInputToGetNewAnim(unsigned long, u8);
	void Process(f32, unsigned long, Vec3F *, PSR_MATRIX *);
	void PreRenderProcess(bool);
	void Render(void);
	void IsOtherPlayerGrabable(void);
	void FreezePlayer(bool, bool, bool, bool);
	void UnFreezePlayer(void);
	void CheckFootfalls(void);
	void KnockedOverByForce(Vec3F *, f32, f32, bool, bool, bool);
	void IsPlayerInvulnerable(bool);
	void TurnOnOffSkeletonGeometry(bool);
	void StopAudioDueToAnimation(void);
	void StartRobotcatIdleSound(void);
	void StopRobotcatIdleSound(void);
};

class CPlyrCollision {
public:
	void Initialise(PLYR_BASIC_INFO *);
	void ProcessAndResolveCollisionChecking(Vec3F *, bool);
};

class CFacialAnim {
public:
	void Reset(CHARACTER_FUNCTION_DATA *, u8 *, u8);
	void SetBlendFactorsForDesiredExpression(void);
	void NewExpression(u8);
	void Update(bool);
};

class CPlayerHat {
public:
	void Initialise(u8, u8);
	void Reset(void);
	void KnockOff(void);
	void Process(void);
	void Render(PSR_MATRIX *);
};

class CPlayerLight {
public:
	void Reset(u8);
	void SetPlayerLighting(void);
	void StartDirectionalEffectLight(Vec3F *, Vec3F *);
	void StopDirectionalEffectLight(void);
	void ModifyAmbientLight(Vec3F *, u8);
};

class CPlayerObject {
public:
	void DropCarried(bool);
	void PickupNearest(void);
	void PickupHeadswap(u8);
	void ThrowCarried(Vec3F *, f32);
	void SetCarriedTranslation(Vec3F *);
	void UpdateCarried(PSR_MATRIX *);
	void IsCarriedObjWeapon(void);
	void IsCarriedObjOtherPlayer(void);
	void PickupOtherPlayer(void);
	void ThrowOtherPlayer(Vec3F *, f32, bool);
};

class CPancake {
public:
	void Initialise(PLYR_BASIC_INFO *);
	void StartPancake(void);
	void Process(Vec3F *, PSR_MATRIX *);
	void PreRenderProcess(void);
};

class CPlayerShock {
public:
	void StopShocks(void);
	void Start(u8);
	void Update(void);
};

class CPlayerStats {
public:
	void EndBerserk(void);
	void StartBerserk(void);
	void ScoreBerserkPoints(f32);
	void TagRechargeHealth(void);
	void Update(unsigned long);
	void ModifyDamageAmountByCharacterStrength(u16);
	void DamagePlayer(f32, bool);
	void PowerupInput(void);
	void ResetPowerup(void);
};

class CTexSwap {
public:
	void Initialise(CHARACTERSET_INFORMATION *, u8, u8);
	void SetupPancakeTextures(CHARACTERSET_INFORMATION *);
	void SwapToCharredTextures(void);
	void SwapToAltTextures(void);
	void SwapToAltPancakeTextures(void);
	void UndoCharredTextures(void);
	void UndoAltTextures(void);
};

class CCharacterAI {
public:
	void Inititalise(PLYR_BASIC_INFO *, u8, u8);
	void Reset(void);
};

class Csfx {
public:
	void CreateEffect(u32, Vec3F *, f32, u8, PSR_MATRIX *, u8, void *);
	void SetInternalVariables(void);
	void UpdateEffects(void);
	void Reset(void);
	void MakeFootFallEffect(u8, u8, bool);
	void CreateElectrocutedEffect(u8);
};

class COSD {
public:
	void Reset(void);
	void SetUpHeadImages(u8, u8, u8);
	void StartBouncingText(char *, char *, f32, f32, bool, bool);
	void StopBouncingText(bool);
	void ProcessBouncingText(void);
	void ProcessBerserkBar(u8);
	void ComputeFadeLevels(u8);
	void GetFadeLevel(Vec3F *, Vec3F *, Vec3F *);
	void CheckAndStopBerserkCommentary(void);
	void RenderPauseMenu(void);
	void InitialisePauseMenu(u8);
	void RenderTeamOSD(u8, u8);
	void RenderStaticOSDParts(u8);
	void RenderHealthBar1(u8);
	void RenderHealthBar2(u8);
	void RenderHead1(u8);
	void RenderHead2(u8);
	void RenderGrabTimer(u8);
	void RenderWeaponPowerUp(u8);
	void RenderBombTimer(u8);
	void RenderGenericOSD(void);
	void Render(void);
};

class CMarketSE {
public:
	void LoadAndInitialiseData(void);
};

class CPlayer {
public:
	void StoodOnFountain(void);
	void Initialise(u8, u8, u8, u8, u8, u8, u8, u8, u8);
	void Reset(void);
	void IsThisPlayerFacingPoint(Vec3F *, f32);
	void IsThisPlayerFacingOtherPlayer(void);
	void GameOverRepositionCharacter(void);
	void Process(void);
	void SpecialTornadoProcess(void);
	void UpdatePowerups(void);
	void HitByFlyingObect(OBJECT *, u8);
	void GetPlayerWeaponAttack(Vec3F *, f32 *);
	void CanPlayerDamageTerrain(void);
	void DetermineGravity(void);
	void ClearPowerup(void);
	void PickupPowerup(f32, u8);
	void SetExternalForce(Vec3F *);
	void TornadoHasControl(void);
	void TornadoUpdate(Vec3F *, f32);
	void TornadoRelease(Vec3F *, f32);
	void ZeroAllVelocities(void);
	void AttackedByBees(Vec3F *);
	void PancakedByExternalForce(f32, bool, bool);
	void HeldBombExplodes(f32);
	void StandOnMine(f32);
	void StartConcreteBoots(void);
	void UpdateConcreteBoots(void);
	void StopConcreteBoots(void);
	void ApplyForceToPlayer(Vec3F *);
	void SetMainCameraControlPosition(void);
	void GetPlayerName(void);
	void GetTeamName(void);
};

class CRotMatrix {
public:
	void Load(f32, f32, f32, f32, f32, f32, f32, f32, f32);
	void SetRotation(Vec3F, f32);
};

class CEventManager {
public:
	void PostEvent(u32, u32, u32);
	void ResetClockAndQueues(void);
	void ResetAll(void);
	void ResetEventHandlers(void);
	void ClearDelayedQueue(void);
	void AttachEventHandler(u32, void (*)(u32, u32, u32));
	void AddDelayedEventToQueue(u32, u32, u32, u32);
	void PostEventFrameDelayed(u32, u32, u32, u32);
	void InformNewGameFrame(void);
};

class CControllers {
public:
	void IsButtonPressedOrHeld(u8, u8, u16);
	void GetStickValue(u8, u8, u8, u8);
	void SetAnalogToDigitalCopying(bool);
	void SwitchVibrations(bool);
	void IsButtonHeld(u8, u8, u16);
	void IsButtonReleased(u8, u8, u16);
};

class CFade {
public:
	void getFadeValue(void);
	void ClearFade(void);
	void Render(void);
	void setFadeChange(signed char);
	void fadeToBlack(void);
	void fadeFromBlack(void);
	void Process(void);
};

class CFonts {
public:
	void Initialise(void);
};

class CLabSE {
public:
	void LoadAndInitialiseData(void);
};

class CCabinSE {
public:
	void LoadAndInitialiseData(void);
};

class CBeachSE {
public:
	void LoadAndInitialiseData(void);
};

class CBoxingSE {
public:
	void LoadAndInitialiseData(void);
};

class CHauntedSE {
public:
	void LoadAndInitialiseData(void);
};

class CHellSE {
public:
	void LoadAndInitialiseData(void);
};

// class CKitchenSE {
// public:
// 	void LoadAndInitialiseData(void);
// 	void Reset(void);
// 	void ResetTextures(bool);
// 	void SwitchOff(void);
// 	void TestLevelSpecificCollision(COL_SPHERE *, Vec3F *);
// 	void Process(void);
// 	void Render(void);
// 	void GetSpecialAIInfo(AI_AVOIDANCE_INSTANCE *, u8 *);
// 	void TestIncidentalAICollision(COL_SPHERE *, Vec3F *);
// };

class CScrapSE {
public:
	void LoadAndInitialiseData(void);
};

class CShipSE {
public:
	void LoadAndInitialiseData(void);
};

class CSkyscraperSE {
public:
	void LoadAndInitialiseData(void);
};

class CWildWestSE {
public:
	void LoadAndInitialiseData(void);
};

