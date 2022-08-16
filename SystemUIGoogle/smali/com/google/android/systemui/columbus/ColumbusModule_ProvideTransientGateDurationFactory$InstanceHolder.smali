.class public final Lcom/google/android/systemui/columbus/ColumbusModule_ProvideTransientGateDurationFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "ColumbusModule_ProvideTransientGateDurationFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/columbus/ColumbusModule_ProvideTransientGateDurationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstanceHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/android/systemui/columbus/ColumbusModule_ProvideTransientGateDurationFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideTransientGateDurationFactory;

    invoke-direct {v0}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideTransientGateDurationFactory;-><init>()V

    sput-object v0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideTransientGateDurationFactory$InstanceHolder;->INSTANCE:Lcom/google/android/systemui/columbus/ColumbusModule_ProvideTransientGateDurationFactory;

    return-void
.end method
