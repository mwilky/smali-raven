.class public final synthetic Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;


# instance fields
.field public final synthetic f$0:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda5;->f$0:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda5;->f$0:Ljava/util/HashSet;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->$r8$lambda$w4gnA1fY10c6RkqhVntn-9_mOY8(Ljava/util/HashSet;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V

    return-void
.end method
