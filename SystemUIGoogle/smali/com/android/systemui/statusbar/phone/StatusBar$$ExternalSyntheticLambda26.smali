.class public final synthetic Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z

.field public final synthetic f$6:Lcom/android/systemui/plugins/ActivityStarter$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda26;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda26;->f$1:Landroid/content/Intent;

    iput p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda26;->f$2:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda26;->f$3:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda26;->f$4:Z

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda26;->f$5:Z

    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda26;->f$6:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda26;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda26;->f$1:Landroid/content/Intent;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda26;->f$2:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda26;->f$3:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda26;->f$4:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda26;->f$5:Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda26;->f$6:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->$r8$lambda$X8-2mOaS5iXfT8zoRY2ChPJ3NNQ(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    return-void
.end method
