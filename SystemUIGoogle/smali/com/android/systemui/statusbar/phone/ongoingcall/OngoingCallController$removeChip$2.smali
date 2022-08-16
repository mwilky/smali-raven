.class public final Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$2;
.super Ljava/lang/Object;
.source "OngoingCallController.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$2<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$2;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;

    const-string p0, "OngoingCallController"

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/gesture/GenericGestureDetector;->removeOnGestureDetectedCallback(Ljava/lang/String;)V

    return-void
.end method
