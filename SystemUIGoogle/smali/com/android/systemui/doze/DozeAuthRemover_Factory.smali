.class public final Lcom/android/systemui/doze/DozeAuthRemover_Factory;
.super Ljava/lang/Object;
.source "DozeAuthRemover_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/doze/DozeAuthRemover;",
        ">;"
    }
.end annotation


# instance fields
.field private final keyguardUpdateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
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
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeAuthRemover_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/doze/DozeAuthRemover_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;)",
            "Lcom/android/systemui/doze/DozeAuthRemover_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/doze/DozeAuthRemover_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/DozeAuthRemover_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/systemui/doze/DozeAuthRemover;
    .locals 1

    new-instance v0, Lcom/android/systemui/doze/DozeAuthRemover;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/DozeAuthRemover;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/doze/DozeAuthRemover;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/doze/DozeAuthRemover_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/systemui/doze/DozeAuthRemover_Factory;->newInstance(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/systemui/doze/DozeAuthRemover;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeAuthRemover_Factory;->get()Lcom/android/systemui/doze/DozeAuthRemover;

    move-result-object p0

    return-object p0
.end method
