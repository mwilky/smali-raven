.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/StringBuilder;

.field public final synthetic f$1:Landroid/content/pm/IPackageManager;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;Landroid/content/pm/IPackageManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda16;->f$0:Ljava/lang/StringBuilder;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda16;->f$1:Landroid/content/pm/IPackageManager;

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda16;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda16;->f$0:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda16;->f$1:Landroid/content/pm/IPackageManager;

    iget p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda16;->f$2:I

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/am/ActivityManagerService;->$r8$lambda$UNT86xVrKKmitFG-Yn7nLZhANMc(Ljava/lang/StringBuilder;Landroid/content/pm/IPackageManager;ILjava/lang/String;)V

    return-void
.end method
