.class final Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerServiceKt$onDeath$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NotificationVoiceReplyManagerService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $recipient:Landroid/os/IBinder$DeathRecipient;

.field public final synthetic $this_onDeath:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerServiceKt$onDeath$recipient$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerServiceKt$onDeath$1;->$this_onDeath:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerServiceKt$onDeath$1;->$recipient:Landroid/os/IBinder$DeathRecipient;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerServiceKt$onDeath$1;->$this_onDeath:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerServiceKt$onDeath$1;->$recipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
