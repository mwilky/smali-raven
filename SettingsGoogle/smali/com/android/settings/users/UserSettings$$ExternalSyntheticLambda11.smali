.class public final synthetic Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/users/UserSettings;

.field public final synthetic f$1:Lcom/android/settingslib/users/UserCreatingDialog;

.field public final synthetic f$2:Landroid/content/pm/UserInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/users/UserSettings;Lcom/android/settingslib/users/UserCreatingDialog;Landroid/content/pm/UserInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda11;->f$0:Lcom/android/settings/users/UserSettings;

    iput-object p2, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda11;->f$1:Lcom/android/settingslib/users/UserCreatingDialog;

    iput-object p3, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda11;->f$2:Landroid/content/pm/UserInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda11;->f$0:Lcom/android/settings/users/UserSettings;

    iget-object v1, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda11;->f$1:Lcom/android/settingslib/users/UserCreatingDialog;

    iget-object p0, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda11;->f$2:Landroid/content/pm/UserInfo;

    invoke-static {v0, v1, p0}, Lcom/android/settings/users/UserSettings;->$r8$lambda$4yYErV1fjtahJ_SnABkCnWdP15I(Lcom/android/settings/users/UserSettings;Lcom/android/settingslib/users/UserCreatingDialog;Landroid/content/pm/UserInfo;)V

    return-void
.end method
