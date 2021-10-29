.class public final synthetic Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/model/SysUiState$SysUiStateCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wmshell/WMShell;

.field public final synthetic f$1:Lcom/android/wm/shell/pip/Pip;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wmshell/WMShell;Lcom/android/wm/shell/pip/Pip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wmshell/WMShell;

    iput-object p2, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/pip/Pip;

    return-void
.end method


# virtual methods
.method public final onSystemUiStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wmshell/WMShell;

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/pip/Pip;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/wmshell/WMShell;->$r8$lambda$Bz8Tb2hCgf6YbwGE7jsTXcO2W2Y(Lcom/android/systemui/wmshell/WMShell;Lcom/android/wm/shell/pip/Pip;I)V

    return-void
.end method
