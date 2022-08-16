.class public final synthetic Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/Intent;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLandroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda13;->f$0:Landroid/content/Intent;

    iput-boolean p2, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda13;->f$1:Z

    iput-object p3, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda13;->f$2:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    iput-boolean p4, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda13;->f$3:Z

    iput-object p5, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda13;->f$4:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v1, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda13;->f$0:Landroid/content/Intent;

    iget-boolean v2, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda13;->f$1:Z

    iget-object v3, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda13;->f$2:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    iget-boolean v4, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda13;->f$3:Z

    iget-object v5, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda13;->f$4:Landroid/os/UserHandle;

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLandroid/os/UserHandle;)V

    return-void
.end method
