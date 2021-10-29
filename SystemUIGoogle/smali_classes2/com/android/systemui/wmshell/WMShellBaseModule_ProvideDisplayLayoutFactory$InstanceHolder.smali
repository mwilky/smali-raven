.class final Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideDisplayLayoutFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "WMShellBaseModule_ProvideDisplayLayoutFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideDisplayLayoutFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideDisplayLayoutFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideDisplayLayoutFactory;

    invoke-direct {v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideDisplayLayoutFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideDisplayLayoutFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideDisplayLayoutFactory;

    return-void
.end method

.method static synthetic access$000()Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideDisplayLayoutFactory;
    .locals 1

    sget-object v0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideDisplayLayoutFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideDisplayLayoutFactory;

    return-object v0
.end method
