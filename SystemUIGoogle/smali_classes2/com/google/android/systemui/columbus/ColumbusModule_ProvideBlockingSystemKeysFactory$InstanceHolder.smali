.class final Lcom/google/android/systemui/columbus/ColumbusModule_ProvideBlockingSystemKeysFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "ColumbusModule_ProvideBlockingSystemKeysFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/columbus/ColumbusModule_ProvideBlockingSystemKeysFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/android/systemui/columbus/ColumbusModule_ProvideBlockingSystemKeysFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideBlockingSystemKeysFactory;

    invoke-direct {v0}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideBlockingSystemKeysFactory;-><init>()V

    sput-object v0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideBlockingSystemKeysFactory$InstanceHolder;->INSTANCE:Lcom/google/android/systemui/columbus/ColumbusModule_ProvideBlockingSystemKeysFactory;

    return-void
.end method

.method static synthetic access$000()Lcom/google/android/systemui/columbus/ColumbusModule_ProvideBlockingSystemKeysFactory;
    .locals 1

    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideBlockingSystemKeysFactory$InstanceHolder;->INSTANCE:Lcom/google/android/systemui/columbus/ColumbusModule_ProvideBlockingSystemKeysFactory;

    return-object v0
.end method
