.class Lcom/android/settings/CryptKeeper$4;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CryptKeeper;->setupUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field owner_info:Ljava/lang/String;

.field passwordType:I

.field password_visible:Z

.field pattern_visible:Z

.field final synthetic this$0:Lcom/android/settings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settings/CryptKeeper$4;->passwordType:I

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    const-string p1, "0"

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->access$300(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->getPasswordType()I

    move-result v1

    iput v1, p0, Lcom/android/settings/CryptKeeper$4;->passwordType:I

    const-string v1, "OwnerInfo"

    invoke-interface {v0, v1}, Landroid/os/storage/IStorageManager;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/CryptKeeper$4;->owner_info:Ljava/lang/String;

    const-string v1, "PatternVisible"

    invoke-interface {v0, v1}, Landroid/os/storage/IStorageManager;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/CryptKeeper$4;->pattern_visible:Z

    const-string v1, "PasswordVisible"

    invoke-interface {v0, v1}, Landroid/os/storage/IStorageManager;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings/CryptKeeper$4;->password_visible:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error calling mount service "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CryptKeeper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$4;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 3

    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper$4;->password_visible:Z

    const-string v1, "show_password"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget p1, p0, Lcom/android/settings/CryptKeeper$4;->passwordType:I

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const v0, 0x7f0600aa

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(I)V

    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const v0, 0x7f0408a2

    invoke-static {p1, v0}, Lcom/android/settings/CryptKeeper;->access$1202(Lcom/android/settings/CryptKeeper;I)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const v0, 0x7f0600a8

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(I)V

    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {p1, v1}, Lcom/android/settings/CryptKeeper;->access$1300(Lcom/android/settings/CryptKeeper;Z)V

    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const v0, 0x7f0408a1

    invoke-static {p1, v0}, Lcom/android/settings/CryptKeeper;->access$1202(Lcom/android/settings/CryptKeeper;I)I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const v0, 0x7f0600a6

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(I)V

    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const v0, 0x7f0408a0

    invoke-static {p1, v0}, Lcom/android/settings/CryptKeeper;->access$1202(Lcom/android/settings/CryptKeeper;I)I

    :goto_0
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const v0, 0x7f0d0531

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->access$1200(Lcom/android/settings/CryptKeeper;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const v0, 0x7f0d03ff

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/CryptKeeper$4;->owner_info:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {p1}, Lcom/android/settings/CryptKeeper;->access$1400(Lcom/android/settings/CryptKeeper;)V

    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const v2, 0x1020002

    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/high16 v2, 0x400000

    invoke-virtual {p1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {p1}, Lcom/android/settings/CryptKeeper;->access$100(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {p1}, Lcom/android/settings/CryptKeeper;->access$100(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object p1

    iget-boolean v2, p0, Lcom/android/settings/CryptKeeper$4;->pattern_visible:Z

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    :cond_2
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {p1}, Lcom/android/settings/CryptKeeper;->access$1500(Lcom/android/settings/CryptKeeper;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {p1, v1}, Lcom/android/settings/CryptKeeper;->access$1300(Lcom/android/settings/CryptKeeper;Z)V

    iget-object p0, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {p0}, Lcom/android/settings/CryptKeeper;->access$1600(Lcom/android/settings/CryptKeeper;)V

    :cond_3
    return-void
.end method
