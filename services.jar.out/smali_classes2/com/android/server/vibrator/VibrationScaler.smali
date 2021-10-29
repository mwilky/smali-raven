.class final Lcom/android/server/vibrator/VibrationScaler;
.super Ljava/lang/Object;
.source "VibrationScaler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;
    }
.end annotation


# static fields
.field private static final SCALE_FACTOR_HIGH:F = 1.2f

.field private static final SCALE_FACTOR_LOW:F = 0.8f

.field private static final SCALE_FACTOR_NONE:F = 1.0f

.field private static final SCALE_FACTOR_VERY_HIGH:F = 1.4f

.field private static final SCALE_FACTOR_VERY_LOW:F = 0.6f

.field private static final SCALE_HIGH:I = 0x1

.field private static final SCALE_LOW:I = -0x1

.field private static final SCALE_NONE:I = 0x0

.field private static final SCALE_VERY_HIGH:I = 0x2

.field private static final SCALE_VERY_LOW:I = -0x2

.field private static final TAG:Ljava/lang/String; = "VibrationScaler"


# instance fields
.field private final mDefaultVibrationAmplitude:I

.field private final mScaleLevels:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsController:Lcom/android/server/vibrator/VibrationSettings;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/vibrator/VibrationSettings;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/vibrator/VibrationScaler;->mSettingsController:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/vibrator/VibrationScaler;->mDefaultVibrationAmplitude:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationScaler;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v1, v2}, Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;-><init>(F)V

    const/4 v2, -0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v2}, Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;-><init>(F)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;-><init>(F)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;

    const v2, 0x3f99999a    # 1.2f

    invoke-direct {v1, v2}, Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;-><init>(F)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;

    const v2, 0x3fb33333    # 1.4f

    invoke-direct {v1, v2}, Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;-><init>(F)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private static intensityToEffectStrength(I)I
    .locals 3

    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got unexpected vibration intensity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VibrationScaler"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getExternalVibrationScale(I)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationScaler;->mSettingsController:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationScaler;->mSettingsController:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v1

    sub-int v2, v1, v0

    const/4 v3, -0x2

    if-lt v2, v3, :cond_0

    const/4 v3, 0x2

    if-gt v2, v3, :cond_0

    return v2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in scaling calculations, ended up with invalid scale level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for vibration with usage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VibrationScaler"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3
.end method

.method public scale(Landroid/os/VibrationEffect;I)Landroid/os/VibrationEffect;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/os/VibrationEffect;",
            ">(",
            "Landroid/os/VibrationEffect;",
            "I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationScaler;->mSettingsController:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v0, p2}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationScaler;->mSettingsController:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v1, p2}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/vibrator/VibrationScaler;->intensityToEffectStrength(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/VibrationEffect;->applyEffectStrength(I)Landroid/os/VibrationEffect;

    move-result-object v3

    iget v4, p0, Lcom/android/server/vibrator/VibrationScaler;->mDefaultVibrationAmplitude:I

    invoke-virtual {v3, v4}, Landroid/os/VibrationEffect;->resolve(I)Landroid/os/VibrationEffect;

    move-result-object p1

    iget-object v3, p0, Lcom/android/server/vibrator/VibrationScaler;->mScaleLevels:Landroid/util/SparseArray;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;

    if-nez v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No configured scaling level! (current="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", default= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VibrationScaler"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_0
    iget v4, v3, Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;->factor:F

    invoke-virtual {p1, v4}, Landroid/os/VibrationEffect;->scale(F)Landroid/os/VibrationEffect;

    move-result-object v4

    return-object v4
.end method

.method public scale(Landroid/os/vibrator/PrebakedSegment;I)Landroid/os/vibrator/PrebakedSegment;
    .locals 3

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationScaler;->mSettingsController:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v0, p2}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationScaler;->intensityToEffectStrength(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/vibrator/PrebakedSegment;->applyEffectStrength(I)Landroid/os/vibrator/PrebakedSegment;

    move-result-object v2

    return-object v2
.end method
