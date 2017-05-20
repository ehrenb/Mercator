.class public Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;
.super Lcm/aptoide/pt/v8engine/fragment/BaseToolbarFragment;
.source "SendFeedbackFragment.java"


# static fields
.field public static final LOGS_FILE_NAME:Ljava/lang/String; = "logs.txt"

.field public static final SCREENSHOT_PATH:Ljava/lang/String; = "SCREENSHOT_PATH"


# instance fields
.field private logsAndScreenshotsCb:Landroid/widget/CheckBox;

.field private messageBodyEdit:Landroid/widget/EditText;

.field private screenShotPath:Ljava/lang/String;

.field private sendFeedbackBtn:Landroid/widget/Button;

.field private subgectEdit:Landroid/widget/EditText;

.field private unManagedSubscription:Lrx/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseToolbarFragment;-><init>()V

    return-void
.end method

.method private getUriFromFile(Ljava/io/File;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 205
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    .line 207
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-static {v0, v1, p1}, Landroid/support/v4/content/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 213
    :goto_0
    return-object v0

    .line 211
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic lambda$setupViews$1(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 98
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;
    .locals 3

    .prologue
    .line 53
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;-><init>()V

    .line 54
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 55
    const-string v2, "SCREENSHOT_PATH"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;->setArguments(Landroid/os/Bundle;)V

    .line 57
    return-object v0
.end method

.method private sendFeedback()V
    .locals 5

    .prologue
    .line 114
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;->isContentValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    const-string v0, "message/rfc822"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v0, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 119
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v4

    invoke-interface {v4}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getFeedbackEmail()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 118
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-class v0, Lcm/aptoide/pt/database/realm/Installed;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/InstalledAccessor;

    .line 158
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcm/aptoide/pt/database/accessors/InstalledAccessor;->get(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d;->i()Lrx/d;

    move-result-object v0

    .line 159
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;Landroid/content/Intent;)Lrx/b/b;

    move-result-object v1

    .line 160
    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;->unManagedSubscription:Lrx/k;

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->feedback_not_valid:I

    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;I)V

    goto :goto_0
.end method


# virtual methods
.method public bindViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/BaseToolbarFragment;->bindViews(Landroid/view/View;)V

    .line 107
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->FeedBackSubject:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;->subgectEdit:Landroid/widget/EditText;

    .line 108
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->FeedBacktext:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;->messageBodyEdit:Landroid/widget/EditText;

    .line 109
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->FeedBackSendButton:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;->sendFeedbackBtn:Landroid/widget/Button;

    .line 110
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->FeedBackCheckBox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;->logsAndScreenshotsCb:Landroid/widget/CheckBox;

    .line 111
    return-void
.end method

.method protected displayHomeUpAsEnabled()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public getContentViewId()I
    .locals 1

    .prologue
    .line 217
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->activity_feed_back:I

    return v0
.end method

.method public isContentValid()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;->subgectEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$sendFeedback$2(Landroid/content/Intent;Lcm/aptoide/pt/database/realm/Installed;)V
    .locals 4

    .prologue
    .line 161
    const-string v0, ""

    .line 162
    if-eqz p2, :cond_0

    .line 163
    invoke-virtual {p2}, Lcm/aptoide/pt/database/realm/Installed;->getVersionName()Ljava/lang/String;

    move-result-object v0

    .line 166
    :cond_0
    const-string v1, "android.intent.extra.SUBJECT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Feedback]-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;->subgectEdit:Landroid/widget/EditText;

    .line 167
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v0, "android.intent.extra.TEXT"

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;->messageBodyEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;->logsAndScreenshotsCb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;->screenShotPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    if-eqz v1, :cond_1

    .line 174
    invoke-direct {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;->getUriFromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_1
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getCachePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "logs.txt"

    invoke-static {v1, v2}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->readLogs(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 180
    if-eqz v1, :cond_2

    .line 181
    invoke-direct {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;->getUriFromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_2
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 186
    :cond_3
    :try_start_0
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;->startActivity(Landroid/content/Intent;)V

    .line 187
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->onBackPressed()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->feedback_no_email:I

    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;I)V

    goto :goto_0
.end method

.method synthetic lambda$setupViews$0(Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;->sendFeedback()V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/BaseToolbarFragment;->onAttach(Landroid/app/Activity;)V

    .line 76
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/BaseToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseToolbarFragment;->onDestroyView()V

    .line 88
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;->unManagedSubscription:Lrx/k;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;->unManagedSubscription:Lrx/k;

    invoke-interface {v0}, Lrx/k;->unsubscribe()V

    .line 91
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 66
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 67
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->onBackPressed()V

    .line 69
    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/BaseToolbarFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/BaseToolbarFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 84
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/BaseToolbarFragment;->setArguments(Landroid/os/Bundle;)V

    .line 62
    const-string v0, "SCREENSHOT_PATH"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;->screenShotPath:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setupViews()V
    .locals 3

    .prologue
    .line 94
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseToolbarFragment;->setupViews()V

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;->setHasOptionsMenu(Z)V

    .line 96
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;->sendFeedbackBtn:Landroid/widget/Button;

    invoke-static {v0}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 99
    return-void
.end method
