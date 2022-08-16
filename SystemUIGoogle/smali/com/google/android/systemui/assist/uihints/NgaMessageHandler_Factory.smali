.class public final Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;
.super Ljava/lang/Object;
.source "NgaMessageHandler_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;",
        ">;"
    }
.end annotation


# instance fields
.field public final assistantPresenceHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;",
            ">;"
        }
    .end annotation
.end field

.field public final audioInfoListenersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$AudioInfoListener;",
            ">;>;"
        }
    .end annotation
.end field

.field public final cardInfoListenersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$CardInfoListener;",
            ">;>;"
        }
    .end annotation
.end field

.field public final chipsInfoListenersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ChipsInfoListener;",
            ">;>;"
        }
    .end annotation
.end field

.field public final clearListenersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ClearListener;",
            ">;>;"
        }
    .end annotation
.end field

.field public final configInfoListenersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfoListener;",
            ">;>;"
        }
    .end annotation
.end field

.field public final edgeLightsInfoListenersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$EdgeLightsInfoListener;",
            ">;>;"
        }
    .end annotation
.end field

.field public final goBackListenersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$GoBackListener;",
            ">;>;"
        }
    .end annotation
.end field

.field public final greetingInfoListenersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$GreetingInfoListener;",
            ">;>;"
        }
    .end annotation
.end field

.field public final handlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public final keepAliveListenersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$KeepAliveListener;",
            ">;>;"
        }
    .end annotation
.end field

.field public final keyboardInfoListenersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$KeyboardInfoListener;",
            ">;>;"
        }
    .end annotation
.end field

.field public final navBarVisibilityListenersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$NavBarVisibilityListener;",
            ">;>;"
        }
    .end annotation
.end field

.field public final navigationModeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ">;"
        }
    .end annotation
.end field

.field public final ngaUiControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/NgaUiController;",
            ">;"
        }
    .end annotation
.end field

.field public final startActivityInfoListenersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$StartActivityInfoListener;",
            ">;>;"
        }
    .end annotation
.end field

.field public final swipeListenersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$SwipeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field public final takeScreenshotListenersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$TakeScreenshotListener;",
            ">;>;"
        }
    .end annotation
.end field

.field public final transcriptionInfoListenersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$TranscriptionInfoListener;",
            ">;>;"
        }
    .end annotation
.end field

.field public final warmingListenersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$WarmingListener;",
            ">;>;"
        }
    .end annotation
.end field

.field public final zerostateInfoListenersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ZerostateInfoListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ldagger/internal/SetFactory;Ljavax/inject/Provider;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->ngaUiControllerProvider:Ljavax/inject/Provider;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->assistantPresenceHandlerProvider:Ljavax/inject/Provider;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->navigationModeControllerProvider:Ljavax/inject/Provider;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->keepAliveListenersProvider:Ljavax/inject/Provider;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->audioInfoListenersProvider:Ljavax/inject/Provider;

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->cardInfoListenersProvider:Ljavax/inject/Provider;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->configInfoListenersProvider:Ljavax/inject/Provider;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->edgeLightsInfoListenersProvider:Ljavax/inject/Provider;

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->transcriptionInfoListenersProvider:Ljavax/inject/Provider;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->greetingInfoListenersProvider:Ljavax/inject/Provider;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->chipsInfoListenersProvider:Ljavax/inject/Provider;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->clearListenersProvider:Ljavax/inject/Provider;

    move-object v1, p13

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->startActivityInfoListenersProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->keyboardInfoListenersProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->zerostateInfoListenersProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->goBackListenersProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->swipeListenersProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->takeScreenshotListenersProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->warmingListenersProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->navBarVisibilityListenersProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->handlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ldagger/internal/SetFactory;Ljavax/inject/Provider;)Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    new-instance v22, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;

    move-object/from16 v0, v22

    invoke-direct/range {v0 .. v21}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ldagger/internal/SetFactory;Ljavax/inject/Provider;)V

    return-object v22
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->ngaUiControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/google/android/systemui/assist/uihints/NgaUiController;

    iget-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->assistantPresenceHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;

    iget-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->navigationModeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->keepAliveListenersProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/util/Set;

    iget-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->audioInfoListenersProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/util/Set;

    iget-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->cardInfoListenersProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/util/Set;

    iget-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->configInfoListenersProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/util/Set;

    iget-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->edgeLightsInfoListenersProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/util/Set;

    iget-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->transcriptionInfoListenersProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/util/Set;

    iget-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->greetingInfoListenersProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/util/Set;

    iget-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->chipsInfoListenersProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/util/Set;

    iget-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->clearListenersProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/util/Set;

    iget-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->startActivityInfoListenersProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ljava/util/Set;

    iget-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->keyboardInfoListenersProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ljava/util/Set;

    iget-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->zerostateInfoListenersProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Ljava/util/Set;

    iget-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->goBackListenersProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Ljava/util/Set;

    iget-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->swipeListenersProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Ljava/util/Set;

    iget-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->takeScreenshotListenersProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Ljava/util/Set;

    iget-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->warmingListenersProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Ljava/util/Set;

    iget-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->navBarVisibilityListenersProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Ljava/util/Set;

    iget-object v0, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler_Factory;->handlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/Handler;

    new-instance v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;

    move-object v2, v0

    invoke-direct/range {v2 .. v23}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;-><init>(Lcom/google/android/systemui/assist/uihints/NgaUiController;Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;Lcom/android/systemui/navigationbar/NavigationModeController;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Landroid/os/Handler;)V

    return-object v0
.end method
