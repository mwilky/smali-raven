.class final Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;
.super Ljava/lang/Object;
.source "AidlConversionUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AidlConversionUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertAidlToFrameworkFeature(B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported feature : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AidlConversionUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    const/4 v0, 0x2

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertFrameworkToAidlFeature(I)B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported feature : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AidlConversionUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toFrameworkAcquiredInfo(B)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/16 v0, 0x17

    return v0

    :pswitch_0
    const/16 v0, 0x1a

    return v0

    :pswitch_1
    const/16 v0, 0x19

    return v0

    :pswitch_2
    const/16 v0, 0x18

    return v0

    :pswitch_3
    const/16 v0, 0x16

    return v0

    :pswitch_4
    const/16 v0, 0x15

    return v0

    :pswitch_5
    const/16 v0, 0x14

    return v0

    :pswitch_6
    const/16 v0, 0x13

    return v0

    :pswitch_7
    const/16 v0, 0x12

    return v0

    :pswitch_8
    const/16 v0, 0x11

    return v0

    :pswitch_9
    const/16 v0, 0x10

    return v0

    :pswitch_a
    const/16 v0, 0xf

    return v0

    :pswitch_b
    const/16 v0, 0xe

    return v0

    :pswitch_c
    const/16 v0, 0xd

    return v0

    :pswitch_d
    const/16 v0, 0xc

    return v0

    :pswitch_e
    const/16 v0, 0xb

    return v0

    :pswitch_f
    const/16 v0, 0xa

    return v0

    :pswitch_10
    const/16 v0, 0x9

    return v0

    :pswitch_11
    const/16 v0, 0x8

    return v0

    :pswitch_12
    const/4 v0, 0x7

    return v0

    :pswitch_13
    const/4 v0, 0x6

    return v0

    :pswitch_14
    const/4 v0, 0x5

    return v0

    :pswitch_15
    const/4 v0, 0x4

    return v0

    :pswitch_16
    const/4 v0, 0x3

    return v0

    :pswitch_17
    const/4 v0, 0x2

    return v0

    :pswitch_18
    const/4 v0, 0x1

    return v0

    :pswitch_19
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toFrameworkAuthenticationFrame(Landroid/hardware/biometrics/face/AuthenticationFrame;)Landroid/hardware/face/FaceAuthenticationFrame;
    .locals 2

    new-instance v0, Landroid/hardware/face/FaceAuthenticationFrame;

    iget-object v1, p0, Landroid/hardware/biometrics/face/AuthenticationFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkBaseFrame(Landroid/hardware/biometrics/face/BaseFrame;)Landroid/hardware/face/FaceDataFrame;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/face/FaceAuthenticationFrame;-><init>(Landroid/hardware/face/FaceDataFrame;)V

    return-object v0
.end method

.method public static toFrameworkBaseFrame(Landroid/hardware/biometrics/face/BaseFrame;)Landroid/hardware/face/FaceDataFrame;
    .locals 8

    new-instance v7, Landroid/hardware/face/FaceDataFrame;

    iget-byte v0, p0, Landroid/hardware/biometrics/face/BaseFrame;->acquiredInfo:B

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkAcquiredInfo(B)I

    move-result v1

    iget v2, p0, Landroid/hardware/biometrics/face/BaseFrame;->vendorCode:I

    iget v3, p0, Landroid/hardware/biometrics/face/BaseFrame;->pan:F

    iget v4, p0, Landroid/hardware/biometrics/face/BaseFrame;->tilt:F

    iget v5, p0, Landroid/hardware/biometrics/face/BaseFrame;->distance:F

    iget-boolean v6, p0, Landroid/hardware/biometrics/face/BaseFrame;->isCancellable:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/hardware/face/FaceDataFrame;-><init>(IIFFFZ)V

    return-object v7
.end method

.method public static toFrameworkCell(Landroid/hardware/biometrics/face/Cell;)Landroid/hardware/face/FaceEnrollCell;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/hardware/face/FaceEnrollCell;

    iget v1, p0, Landroid/hardware/biometrics/face/Cell;->x:I

    iget v2, p0, Landroid/hardware/biometrics/face/Cell;->y:I

    iget v3, p0, Landroid/hardware/biometrics/face/Cell;->z:I

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/face/FaceEnrollCell;-><init>(III)V

    :goto_0
    return-object v0
.end method

.method public static toFrameworkEnrollmentFrame(Landroid/hardware/biometrics/face/EnrollmentFrame;)Landroid/hardware/face/FaceEnrollFrame;
    .locals 4

    new-instance v0, Landroid/hardware/face/FaceEnrollFrame;

    iget-object v1, p0, Landroid/hardware/biometrics/face/EnrollmentFrame;->cell:Landroid/hardware/biometrics/face/Cell;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkCell(Landroid/hardware/biometrics/face/Cell;)Landroid/hardware/face/FaceEnrollCell;

    move-result-object v1

    iget-byte v2, p0, Landroid/hardware/biometrics/face/EnrollmentFrame;->stage:B

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkEnrollmentStage(I)I

    move-result v2

    iget-object v3, p0, Landroid/hardware/biometrics/face/EnrollmentFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkBaseFrame(Landroid/hardware/biometrics/face/BaseFrame;)Landroid/hardware/face/FaceDataFrame;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/face/FaceEnrollFrame;-><init>(Landroid/hardware/face/FaceEnrollCell;ILandroid/hardware/face/FaceDataFrame;)V

    return-object v0
.end method

.method public static toFrameworkEnrollmentStage(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x6

    return v0

    :pswitch_1
    const/4 v0, 0x5

    return v0

    :pswitch_2
    const/4 v0, 0x4

    return v0

    :pswitch_3
    const/4 v0, 0x3

    return v0

    :pswitch_4
    const/4 v0, 0x2

    return v0

    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toFrameworkError(B)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/16 v0, 0x11

    return v0

    :pswitch_0
    const/16 v0, 0x10

    return v0

    :pswitch_1
    const/16 v0, 0x8

    return v0

    :pswitch_2
    const/4 v0, 0x6

    return v0

    :pswitch_3
    const/4 v0, 0x5

    return v0

    :pswitch_4
    const/4 v0, 0x4

    return v0

    :pswitch_5
    const/4 v0, 0x3

    return v0

    :pswitch_6
    const/4 v0, 0x2

    return v0

    :pswitch_7
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
