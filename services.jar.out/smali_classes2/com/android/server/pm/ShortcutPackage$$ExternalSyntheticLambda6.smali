.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutPackage;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutPackage;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/pm/ShortcutPackage;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda6;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/pm/ShortcutPackage;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda6;->f$2:I

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/pm/ShortcutPackage;->$r8$lambda$dHTkqLvE6X78n0TpwTv2mIjgxLA(Lcom/android/server/pm/ShortcutPackage;Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;)V

    return-void
.end method
