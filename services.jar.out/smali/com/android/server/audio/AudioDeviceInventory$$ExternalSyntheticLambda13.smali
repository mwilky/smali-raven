.class public final synthetic Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda13;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda13;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda13;->INSTANCE:Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda13;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$configureHdmiPlugIntent$13(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
