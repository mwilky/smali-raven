.class public final Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;
.super Lcom/google/android/systemui/statusbar/INotificationVoiceReplyService$Stub;
.source "NotificationVoiceReplyManagerService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManager$Initializer;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationVoiceReplyManagerService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationVoiceReplyManagerService.kt\ncom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,273:1\n20#2:274\n22#2:278\n50#3:275\n55#3:277\n106#4:276\n*S KotlinDebug\n*F\n+ 1 NotificationVoiceReplyManagerService.kt\ncom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1\n*L\n117#1:274\n117#1:278\n117#1:275\n117#1:277\n117#1:276\n*E\n"
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final onVoiceAuthStateChangedFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final setFeatureEnabledFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final startVoiceReplyFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final synthetic this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    invoke-direct {p0}, Lcom/google/android/systemui/statusbar/INotificationVoiceReplyService$Stub;-><init>()V

    const/4 p1, 0x0

    const/4 v0, 0x7

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(II)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->setFeatureEnabledFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(II)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->startVoiceReplyFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(II)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->onVoiceAuthStateChangedFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    return-void
.end method

.method public static getUserId()I
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method
