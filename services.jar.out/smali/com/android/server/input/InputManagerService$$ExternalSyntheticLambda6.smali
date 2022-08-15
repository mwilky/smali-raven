.class public final synthetic Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;


# instance fields
.field public final synthetic f$0:[Landroid/hardware/input/KeyboardLayout;


# direct methods
.method public synthetic constructor <init>([Landroid/hardware/input/KeyboardLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda6;->f$0:[Landroid/hardware/input/KeyboardLayout;

    return-void
.end method


# virtual methods
.method public final visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda6;->f$0:[Landroid/hardware/input/KeyboardLayout;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->$r8$lambda$Yto295RJsbR5BgTXil0hVbkcyBc([Landroid/hardware/input/KeyboardLayout;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V

    return-void
.end method
