.class public final Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideDisplayLayoutFactory;
.super Ljava/lang/Object;
.source "WMShellBaseModule_ProvideDisplayLayoutFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideDisplayLayoutFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/wm/shell/common/DisplayLayout;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideDisplayLayoutFactory;
    .locals 1

    invoke-static {}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideDisplayLayoutFactory$InstanceHolder;->access$000()Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideDisplayLayoutFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;
    .locals 1

    invoke-static {}, Lcom/android/systemui/wmshell/WMShellBaseModule;->provideDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/DisplayLayout;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/common/DisplayLayout;
    .locals 0

    invoke-static {}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideDisplayLayoutFactory;->provideDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideDisplayLayoutFactory;->get()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p0

    return-object p0
.end method
