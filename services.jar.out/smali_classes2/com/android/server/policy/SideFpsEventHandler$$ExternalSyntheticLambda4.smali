.class public final synthetic Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda4;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda4;->f$0:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/policy/SideFpsEventHandler;->$r8$lambda$pgsGnyzJyhQ5wxh4oXVOBGo_WhU(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method