.class final Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NotificationVoiceReplyManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->extractCandidate(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JLkotlin/Lazy;)Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/app/Notification$Action;",
        "Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $builderLazy:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Landroid/app/Notification$Builder;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final synthetic $handlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $postTime:J

.field public final synthetic this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JLkotlin/Lazy;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "J",
            "Lkotlin/Lazy<",
            "+",
            "Landroid/app/Notification$Builder;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-wide p3, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;->$postTime:J

    iput-object p5, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;->$builderLazy:Lkotlin/Lazy;

    iput-object p6, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;->$handlers:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroid/app/Notification$Action;

    iget-object v2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    iget-object v4, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-wide v6, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;->$postTime:J

    iget-object v3, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;->$builderLazy:Lkotlin/Lazy;

    iget-object v8, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;->$handlers:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    const/4 v0, 0x0

    if-nez v9, :cond_0

    iget-object v1, v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    iget-object v2, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    const-string v3, "no action intent"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logRejectCandidate(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_0
    invoke-virtual {v1}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v10

    if-nez v10, :cond_1

    goto/16 :goto_a

    :cond_1
    invoke-static {v10}, Lkotlin/collections/ArraysKt___ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Landroid/app/RemoteInput;

    invoke-virtual {v11}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_0

    :cond_3
    move-object v5, v0

    :goto_0
    move-object v11, v5

    check-cast v11, Landroid/app/RemoteInput;

    if-nez v11, :cond_4

    iget-object v1, v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    iget-object v2, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    const-string v3, "no freeform input"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logRejectCandidate(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_4
    iget-object v1, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v1, :cond_5

    move-object v1, v0

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_6

    goto/16 :goto_a

    :cond_6
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-nez v1, :cond_7

    move-object v12, v0

    goto/16 :goto_9

    :cond_7
    const v5, 0x10201c7

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_8

    goto/16 :goto_7

    :cond_8
    invoke-static {v1}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;

    move-result-object v1

    sget-object v5, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$getReplyButton$1;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$getReplyButton$1;

    invoke-static {v1, v5}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v1

    new-instance v5, Lkotlin/sequences/FilteringSequence$iterator$1;

    invoke-direct {v5, v1}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    :cond_9
    invoke-virtual {v5}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v5}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/view/View;

    const v13, 0x1020459

    invoke-virtual {v12, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    if-nez v12, :cond_a

    goto :goto_5

    :cond_a
    instance-of v14, v12, [Ljava/lang/Object;

    if-eqz v14, :cond_b

    check-cast v12, [Ljava/lang/Object;

    goto :goto_2

    :cond_b
    move-object v12, v0

    :goto_2
    if-nez v12, :cond_c

    goto :goto_5

    :cond_c
    invoke-static {v12}, Lkotlin/collections/ArraysKt___ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v12

    invoke-interface {v12}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v14, v13

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    if-ltz v14, :cond_e

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    goto :goto_4

    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_e
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v0

    :cond_f
    const/4 v14, -0x1

    :goto_4
    if-ltz v14, :cond_10

    const/4 v13, 0x1

    :cond_10
    :goto_5
    if-eqz v13, :cond_9

    goto :goto_6

    :cond_11
    move-object v1, v0

    :goto_6
    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_12

    goto :goto_7

    :cond_12
    instance-of v5, v1, Landroid/widget/Button;

    if-eqz v5, :cond_13

    check-cast v1, Landroid/widget/Button;

    goto :goto_8

    :cond_13
    :goto_7
    move-object v1, v0

    :goto_8
    move-object v12, v1

    :goto_9
    if-nez v12, :cond_14

    iget-object v1, v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    iget-object v2, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    const-string v3, "no reply button in expanded view"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logRejectCandidate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_14
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/Notification$Builder;

    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    move-object v3, v0

    iget-object v13, v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->notificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v14, v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->shadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iget-object v15, v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    iget-object v1, v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object/from16 v16, v1

    iget-object v1, v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-object/from16 v17, v1

    iget-object v1, v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->notifShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    move-object/from16 v18, v1

    iget-object v1, v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v19, v1

    iget-object v1, v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->powerManager:Landroid/os/PowerManager;

    move-object/from16 v20, v1

    invoke-direct/range {v3 .. v20}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification$Builder;JLjava/util/List;Landroid/app/PendingIntent;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/widget/Button;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Landroid/os/PowerManager;)V

    :goto_a
    return-object v0
.end method
