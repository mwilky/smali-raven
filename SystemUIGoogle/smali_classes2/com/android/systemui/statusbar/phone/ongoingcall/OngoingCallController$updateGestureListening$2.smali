.class final Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateGestureListening$2;
.super Ljava/lang/Object;
.source "OngoingCallController.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->updateGestureListening()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateGestureListening$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateGestureListening$2$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateGestureListening$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateGestureListening$2$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)V

    const-string p0, "OngoingCallController"

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->addOnGestureDetectedCallback(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateGestureListening$2;->accept(Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;)V

    return-void
.end method
