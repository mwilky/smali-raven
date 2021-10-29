.class final Lcom/android/systemui/dagger/SystemUIModule_ProvideSysUiStateFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "SystemUIModule_ProvideSysUiStateFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dagger/SystemUIModule_ProvideSysUiStateFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/dagger/SystemUIModule_ProvideSysUiStateFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/dagger/SystemUIModule_ProvideSysUiStateFactory;

    invoke-direct {v0}, Lcom/android/systemui/dagger/SystemUIModule_ProvideSysUiStateFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/dagger/SystemUIModule_ProvideSysUiStateFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/dagger/SystemUIModule_ProvideSysUiStateFactory;

    return-void
.end method

.method static synthetic access$000()Lcom/android/systemui/dagger/SystemUIModule_ProvideSysUiStateFactory;
    .locals 1

    sget-object v0, Lcom/android/systemui/dagger/SystemUIModule_ProvideSysUiStateFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/dagger/SystemUIModule_ProvideSysUiStateFactory;

    return-object v0
.end method
