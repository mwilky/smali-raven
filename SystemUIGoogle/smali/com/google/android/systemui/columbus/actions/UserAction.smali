.class public abstract Lcom/google/android/systemui/columbus/actions/UserAction;
.super Lcom/google/android/systemui/columbus/actions/Action;
.source "UserAction.kt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/columbus/actions/Action;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "+",
            "Lcom/google/android/systemui/columbus/feedback/FeedbackEffect;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/columbus/actions/Action;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public availableOnLockscreen()Z
    .locals 0

    instance-of p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;

    return p0
.end method

.method public availableOnScreenOff()Z
    .locals 0

    instance-of p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;

    return p0
.end method
