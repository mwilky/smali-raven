.class public final synthetic Lcom/android/keyguard/KeyguardHostViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardHostViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardHostViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardHostViewController;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-virtual {p0, p3}, Lcom/android/keyguard/KeyguardHostViewController;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
