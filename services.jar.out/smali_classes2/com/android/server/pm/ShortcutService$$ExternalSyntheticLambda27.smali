.class public final synthetic Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda27;->f$0:Lcom/android/server/pm/ShortcutService;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda27;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda27;->f$2:I

    iput-boolean p4, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda27;->f$3:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda27;->f$0:Lcom/android/server/pm/ShortcutService;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda27;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda27;->f$2:I

    iget-boolean p0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda27;->f$3:Z

    check-cast p1, Lcom/android/server/pm/ShortcutUser;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/pm/ShortcutService;->$r8$lambda$Uq4xkry_E3aTrGmgDxecqUPPX1A(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;IZLcom/android/server/pm/ShortcutUser;)V

    return-void
.end method
