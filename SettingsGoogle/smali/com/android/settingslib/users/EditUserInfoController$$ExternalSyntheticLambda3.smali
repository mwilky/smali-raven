.class public final synthetic Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/users/EditUserInfoController;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/users/EditUserInfoController;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda3;->f$0:Lcom/android/settingslib/users/EditUserInfoController;

    iput-object p2, p0, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda3;->f$0:Lcom/android/settingslib/users/EditUserInfoController;

    iget-object p0, p0, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, p0, p1}, Lcom/android/settingslib/users/EditUserInfoController;->$r8$lambda$GoyE3hZWHSlKbPS52JzcxAXFZVw(Lcom/android/settingslib/users/EditUserInfoController;Ljava/lang/Runnable;Landroid/content/DialogInterface;)V

    return-void
.end method
