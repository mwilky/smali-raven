.class public final Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler_Factory;
.super Ljava/lang/Object;
.source "TouchOutsideHandler_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler_Factory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler;",
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

    new-instance p0, Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler;

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler;-><init>()V

    return-object p0
.end method