.class public final Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$25;
.super Ljava/lang/Object;
.source "CentralSurfacesImpl.java"

# interfaces
.implements Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$25;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLaunchAnimationEnd()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$25;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setBlursDisabledForAppLaunch(Z)V

    return-void
.end method

.method public final onLaunchAnimationStart()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$25;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setBlursDisabledForAppLaunch(Z)V

    return-void
.end method