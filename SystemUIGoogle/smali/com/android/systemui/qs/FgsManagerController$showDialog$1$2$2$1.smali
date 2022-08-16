.class public final synthetic Lcom/android/systemui/qs/FgsManagerController$showDialog$1$2$2$1;
.super Ljava/lang/Object;
.source "FgsManagerController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/FgsManagerController$showDialog$1$2;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/qs/FgsManagerController$OnDialogDismissedListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/FgsManagerController$OnDialogDismissedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerController$showDialog$1$2$2$1;->$tmp0:Lcom/android/systemui/qs/FgsManagerController$OnDialogDismissedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerController$showDialog$1$2$2$1;->$tmp0:Lcom/android/systemui/qs/FgsManagerController$OnDialogDismissedListener;

    invoke-interface {p0}, Lcom/android/systemui/qs/FgsManagerController$OnDialogDismissedListener;->onDialogDismissed()V

    return-void
.end method
