.class final Lcom/google/android/systemui/columbus/ColumbusModule_ProvideTransientGateDurationFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "ColumbusModule_ProvideTransientGateDurationFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/columbus/ColumbusModule_ProvideTransientGateDurationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/android/systemui/columbus/ColumbusModule_ProvideTransientGateDurationFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideTransientGateDurationFactory;

    invoke-direct {v0}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideTransientGateDurationFactory;-><init>()V

    sput-object v0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideTransientGateDurationFactory$InstanceHolder;->INSTANCE:Lcom/google/android/systemui/columbus/ColumbusModule_ProvideTransientGateDurationFactory;

    return-void
.end method

.method static synthetic access$000()Lcom/google/android/systemui/columbus/ColumbusModule_ProvideTransientGateDurationFactory;
    .locals 1

    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideTransientGateDurationFactory$InstanceHolder;->INSTANCE:Lcom/google/android/systemui/columbus/ColumbusModule_ProvideTransientGateDurationFactory;

    return-object v0
.end method
