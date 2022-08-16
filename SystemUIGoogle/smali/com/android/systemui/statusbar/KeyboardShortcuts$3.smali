.class public final Lcom/android/systemui/statusbar/KeyboardShortcuts$3;
.super Ljava/lang/Object;
.source "KeyboardShortcuts.java"

# interfaces
.implements Landroid/view/WindowManager$KeyboardShortcutsReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyboardShortcuts;->showKeyboardShortcuts(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$3;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyboardShortcutsReceived(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$3;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/view/KeyboardShortcutGroup;

    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/view/ContextThemeWrapper;

    const v3, 0x7f130386

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Z)V

    new-instance v2, Landroid/view/KeyboardShortcutInfo;

    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/view/ContextThemeWrapper;

    const v5, 0x7f130388

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x42

    const/high16 v6, 0x10000

    invoke-direct {v2, v4, v5, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v1, v2}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    new-instance v2, Landroid/view/KeyboardShortcutInfo;

    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/view/ContextThemeWrapper;

    const v5, 0x7f130387

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x43

    invoke-direct {v2, v4, v5, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v1, v2}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    new-instance v2, Landroid/view/KeyboardShortcutInfo;

    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/view/ContextThemeWrapper;

    const v5, 0x7f13038a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3d

    const/4 v7, 0x2

    invoke-direct {v2, v4, v5, v7}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v1, v2}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    new-instance v2, Landroid/view/KeyboardShortcutInfo;

    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/view/ContextThemeWrapper;

    const v5, 0x7f130389

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2a

    invoke-direct {v2, v4, v5, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v1, v2}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    new-instance v2, Landroid/view/KeyboardShortcutInfo;

    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/view/ContextThemeWrapper;

    const v5, 0x7f13038b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x4c

    invoke-direct {v2, v4, v5, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v1, v2}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    new-instance v2, Landroid/view/KeyboardShortcutInfo;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/view/ContextThemeWrapper;

    const v4, 0x7f13038c

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x3e

    invoke-direct {v2, v0, v4, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v1, v2}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$3;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/android/internal/app/AssistUtils;

    iget-object v5, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/view/ContextThemeWrapper;

    invoke-direct {v4, v5}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v7, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v8, 0x0

    invoke-interface {v7, v4, v8, v9, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v4, "KeyboardShortcuts"

    const-string v7, "PackageManagerService is dead"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    :goto_0
    if-eqz v4, :cond_0

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v7, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    new-instance v7, Landroid/view/KeyboardShortcutInfo;

    iget-object v8, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/view/ContextThemeWrapper;

    const v9, 0x7f13037f

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v4, v9, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v4, "android.intent.category.APP_BROWSER"

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getIconForIntentCategory(ILjava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v7, Landroid/view/KeyboardShortcutInfo;

    iget-object v8, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/view/ContextThemeWrapper;

    const v9, 0x7f130380

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1e

    invoke-direct {v7, v8, v4, v9, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v4, "android.intent.category.APP_CONTACTS"

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getIconForIntentCategory(ILjava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v7, Landroid/view/KeyboardShortcutInfo;

    iget-object v8, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/view/ContextThemeWrapper;

    const v9, 0x7f130382

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1f

    invoke-direct {v7, v8, v4, v9, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v4, "android.intent.category.APP_EMAIL"

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getIconForIntentCategory(ILjava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v4

    if-eqz v4, :cond_3

    new-instance v7, Landroid/view/KeyboardShortcutInfo;

    iget-object v8, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/view/ContextThemeWrapper;

    const v9, 0x7f130383

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x21

    invoke-direct {v7, v8, v4, v9, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v4, "android.intent.category.APP_MESSAGING"

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getIconForIntentCategory(ILjava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v4

    if-eqz v4, :cond_4

    new-instance v7, Landroid/view/KeyboardShortcutInfo;

    iget-object v8, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/view/ContextThemeWrapper;

    const v9, 0x7f130385

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-direct {v7, v8, v4, v9, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v4, "android.intent.category.APP_MUSIC"

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getIconForIntentCategory(ILjava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v4

    if-eqz v4, :cond_5

    new-instance v7, Landroid/view/KeyboardShortcutInfo;

    iget-object v8, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/view/ContextThemeWrapper;

    const v9, 0x7f130384

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2c

    invoke-direct {v7, v8, v4, v9, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v4, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getIconForIntentCategory(ILjava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v4, Landroid/view/KeyboardShortcutInfo;

    iget-object v7, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/view/ContextThemeWrapper;

    const v8, 0x7f130381

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x28

    invoke-direct {v4, v7, v1, v8, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mApplicationItemsComparator:Lcom/android/systemui/statusbar/KeyboardShortcuts$2;

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v5, Landroid/view/KeyboardShortcutGroup;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/view/ContextThemeWrapper;

    const v1, 0x7f13037e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v2, v3}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;Z)V

    :goto_1
    if-eqz v5, :cond_8

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$3;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/KeyboardShortcuts$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts$4;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
