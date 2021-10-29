.class public Lcom/google/android/systemui/elmyra/feedback/NavUndimEffect;
.super Ljava/lang/Object;
.source "NavUndimEffect.java"

# interfaces
.implements Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;


# instance fields
.field private final mNavBarController:Lcom/android/systemui/navigationbar/NavigationBarController;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/android/systemui/navigationbar/NavigationBarController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarController;

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/NavUndimEffect;->mNavBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    return-void
.end method


# virtual methods
.method public onProgress(FI)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/NavUndimEffect;->mNavBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarController;->touchAutoDim(I)V

    return-void
.end method

.method public onRelease()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/NavUndimEffect;->mNavBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarController;->touchAutoDim(I)V

    return-void
.end method

.method public onResolve(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/NavUndimEffect;->mNavBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarController;->touchAutoDim(I)V

    return-void
.end method
