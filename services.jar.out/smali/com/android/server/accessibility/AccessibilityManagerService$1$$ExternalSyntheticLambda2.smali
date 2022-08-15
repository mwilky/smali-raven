.class public final synthetic Lcom/android/server/accessibility/AccessibilityManagerService$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    check-cast p1, Landroid/content/ComponentName;

    invoke-static {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$1;->$r8$lambda$1VJ8APLF_uuqu94F1pH-h88VACo(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method
