.class public final Lcom/google/android/systemui/columbus/feedback/UserActivity_Factory;
.super Ljava/lang/Object;
.source "UserActivity_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/columbus/feedback/UserActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final powerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/PowerManager;",
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
            "Landroid/os/PowerManager;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/feedback/UserActivity_Factory;->powerManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/google/android/systemui/columbus/feedback/UserActivity_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/os/PowerManager;",
            ">;)",
            "Lcom/google/android/systemui/columbus/feedback/UserActivity_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/columbus/feedback/UserActivity_Factory;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/columbus/feedback/UserActivity_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Ldagger/Lazy;)Lcom/google/android/systemui/columbus/feedback/UserActivity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Landroid/os/PowerManager;",
            ">;)",
            "Lcom/google/android/systemui/columbus/feedback/UserActivity;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/columbus/feedback/UserActivity;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/columbus/feedback/UserActivity;-><init>(Ldagger/Lazy;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/columbus/feedback/UserActivity;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/feedback/UserActivity_Factory;->powerManagerProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/systemui/columbus/feedback/UserActivity_Factory;->newInstance(Ldagger/Lazy;)Lcom/google/android/systemui/columbus/feedback/UserActivity;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/feedback/UserActivity_Factory;->get()Lcom/google/android/systemui/columbus/feedback/UserActivity;

    move-result-object p0

    return-object p0
.end method
