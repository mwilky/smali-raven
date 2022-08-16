.class public final Lcom/google/android/systemui/assist/uihints/GoBackHandler_Factory$InstanceHolder;
.super Ljava/lang/Object;
.source "GoBackHandler_Factory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/assist/uihints/GoBackHandler_Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstanceHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/android/systemui/assist/uihints/GoBackHandler_Factory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/systemui/assist/uihints/GoBackHandler_Factory;

    invoke-direct {v0}, Lcom/google/android/systemui/assist/uihints/GoBackHandler_Factory;-><init>()V

    sput-object v0, Lcom/google/android/systemui/assist/uihints/GoBackHandler_Factory$InstanceHolder;->INSTANCE:Lcom/google/android/systemui/assist/uihints/GoBackHandler_Factory;

    return-void
.end method
