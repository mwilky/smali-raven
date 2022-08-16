.class public final Lcom/google/android/systemui/assist/uihints/TaskStackNotifier_Factory;
.super Ljava/lang/Object;
.source "TaskStackNotifier_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/assist/uihints/TaskStackNotifier_Factory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;-><init>()V

    return-object p0
.end method
