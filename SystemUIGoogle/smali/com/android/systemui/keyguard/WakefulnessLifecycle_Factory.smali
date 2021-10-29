.class public final Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;
.super Ljava/lang/Object;
.source "WakefulnessLifecycle_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final wallpaperManagerServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/IWallpaperManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/IWallpaperManager;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;->wallpaperManagerServiceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/IWallpaperManager;",
            ">;)",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Landroid/app/IWallpaperManager;)Lcom/android/systemui/keyguard/WakefulnessLifecycle;
    .locals 1

    new-instance v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/keyguard/WakefulnessLifecycle;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;->wallpaperManagerServiceProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/IWallpaperManager;

    invoke-static {v0, p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;->newInstance(Landroid/content/Context;Landroid/app/IWallpaperManager;)Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;->get()Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-result-object p0

    return-object p0
.end method
