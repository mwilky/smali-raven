.class public final Lcom/android/keyguard/LiftToActivateListener_Factory;
.super Ljava/lang/Object;
.source "LiftToActivateListener_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/keyguard/LiftToActivateListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final accessibilityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/accessibility/AccessibilityManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/view/accessibility/AccessibilityManager;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/LiftToActivateListener_Factory;->accessibilityManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/keyguard/LiftToActivateListener_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/view/accessibility/AccessibilityManager;",
            ">;)",
            "Lcom/android/keyguard/LiftToActivateListener_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/keyguard/LiftToActivateListener_Factory;

    invoke-direct {v0, p0}, Lcom/android/keyguard/LiftToActivateListener_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/view/accessibility/AccessibilityManager;)Lcom/android/keyguard/LiftToActivateListener;
    .locals 1

    new-instance v0, Lcom/android/keyguard/LiftToActivateListener;

    invoke-direct {v0, p0}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/view/accessibility/AccessibilityManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/keyguard/LiftToActivateListener;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/LiftToActivateListener_Factory;->accessibilityManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    invoke-static {p0}, Lcom/android/keyguard/LiftToActivateListener_Factory;->newInstance(Landroid/view/accessibility/AccessibilityManager;)Lcom/android/keyguard/LiftToActivateListener;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/LiftToActivateListener_Factory;->get()Lcom/android/keyguard/LiftToActivateListener;

    move-result-object p0

    return-object p0
.end method
