.class public final synthetic Lcom/android/server/BatteryService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda5;->f$0:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda5;->f$0:Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/server/BatteryService;->$r8$lambda$r64V5AVg_Okl7PnB1VjeN4oyo1I(Landroid/content/Intent;)V

    return-void
.end method
