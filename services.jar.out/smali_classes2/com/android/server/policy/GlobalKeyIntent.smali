.class public final Lcom/android/server/policy/GlobalKeyIntent;
.super Ljava/lang/Object;
.source "GlobalKeyIntent.java"


# instance fields
.field public final mBeganFromNonInteractive:Z

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mKeyEvent:Landroid/view/KeyEvent;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Landroid/view/KeyEvent;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/GlobalKeyIntent;->mComponentName:Landroid/content/ComponentName;

    new-instance p1, Landroid/view/KeyEvent;

    invoke-direct {p1, p2}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    iput-object p1, p0, Lcom/android/server/policy/GlobalKeyIntent;->mKeyEvent:Landroid/view/KeyEvent;

    iput-boolean p3, p0, Lcom/android/server/policy/GlobalKeyIntent;->mBeganFromNonInteractive:Z

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GLOBAL_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/GlobalKeyIntent;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/GlobalKeyIntent;->mKeyEvent:Landroid/view/KeyEvent;

    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/server/policy/GlobalKeyIntent;->mBeganFromNonInteractive:Z

    const-string v1, "EXTRA_BEGAN_FROM_NON_INTERACTIVE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
