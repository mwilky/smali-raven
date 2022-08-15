.class public final synthetic Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/UiModeManagerService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/UiModeManagerService;

    check-cast p1, Landroid/os/PowerSaveState;

    invoke-static {p0, p1}, Lcom/android/server/UiModeManagerService;->$r8$lambda$nBXoPX29oGtvKQx7QC8Jg06Ugmg(Lcom/android/server/UiModeManagerService;Landroid/os/PowerSaveState;)V

    return-void
.end method
