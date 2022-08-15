.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/media/AudioDeviceAttributes;

.field public final synthetic f$1:[I


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioDeviceAttributes;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda8;->f$0:Landroid/media/AudioDeviceAttributes;

    iput-object p2, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda8;->f$1:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda8;->f$0:Landroid/media/AudioDeviceAttributes;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda8;->f$1:[I

    check-cast p1, Landroid/media/IMuteAwaitConnectionCallback;

    invoke-static {v0, p0, p1}, Lcom/android/server/audio/AudioService;->$r8$lambda$ABo62gMJnz51Jmjxxjg465bnC_8(Landroid/media/AudioDeviceAttributes;[ILandroid/media/IMuteAwaitConnectionCallback;)V

    return-void
.end method
