.class public final Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;
.super Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;
.source "FaceAuthenticator.java"


# instance fields
.field private final mFaceService:Landroid/hardware/face/IFaceService;

.field private final mSensorId:I


# direct methods
.method public constructor <init>(Landroid/hardware/face/IFaceService;I)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iput p2, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    return-void
.end method


# virtual methods
.method public cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/face/IFaceService;->cancelAuthenticationFromService(ILandroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public createTestSession(Landroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/face/IFaceService;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v0

    return-object v0
.end method

.method public dumpSensorServiceStateProto(Z)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    invoke-interface {v0, v1, p1}, Landroid/hardware/face/IFaceService;->dumpSensorServiceStateProto(IZ)[B

    move-result-object v0

    return-object v0
.end method

.method public getAuthenticatorId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    invoke-interface {v0, v1, p1}, Landroid/hardware/face/IFaceService;->getAuthenticatorId(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLockoutModeForUser(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    invoke-interface {v0, v1, p1}, Landroid/hardware/face/IFaceService;->getLockoutModeForUser(II)I

    move-result v0

    return v0
.end method

.method public getSensorProperties(Ljava/lang/String;)Landroid/hardware/biometrics/SensorPropertiesInternal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    invoke-interface {v0, v1, p1}, Landroid/hardware/face/IFaceService;->getSensorProperties(ILjava/lang/String;)Landroid/hardware/face/FaceSensorPropertiesInternal;

    move-result-object v0

    return-object v0
.end method

.method public hasEnrolledTemplates(ILjava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/face/IFaceService;->hasEnrolledFaces(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public invalidateAuthenticatorId(ILandroid/hardware/biometrics/IInvalidationCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/face/IFaceService;->invalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    return-void
.end method

.method public isHardwareDetected(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    invoke-interface {v0, v1, p1}, Landroid/hardware/face/IFaceService;->isHardwareDetected(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;IZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iget v2, v0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    move v3, p1

    move-object v4, p2

    move-wide v5, p3

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-interface/range {v1 .. v11}, Landroid/hardware/face/IFaceService;->prepareForAuthentication(IZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;IZ)V

    return-void
.end method

.method public resetLockout(Landroid/os/IBinder;Ljava/lang/String;I[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/face/IFaceService;->resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V

    return-void
.end method

.method public startPreparedClient(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    invoke-interface {v0, v1, p1}, Landroid/hardware/face/IFaceService;->startPreparedClient(II)V

    return-void
.end method
