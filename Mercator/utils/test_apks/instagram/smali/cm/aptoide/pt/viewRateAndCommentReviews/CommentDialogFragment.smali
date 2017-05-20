.class public Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;
.super Lcom/trello/rxlifecycle/b/a;
.source "CommentDialogFragment.java"


# static fields
.field private static final APP_OR_STORE_NAME:Ljava/lang/String; = "app_or_store_name"

.field private static final COMMENT_TYPE:Ljava/lang/String; = "comment_type"

.field private static final PREVIOUS_COMMENT_ID:Ljava/lang/String; = "previous_comment_id"

.field private static final RESOURCE_ID_AS_LONG:Ljava/lang/String; = "resource_id_as_long"

.field private static final RESOURCE_ID_AS_STRING:Ljava/lang/String; = "resource_id_as_string"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private appOrStoreName:Ljava/lang/String;

.field private final aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

.field private commentButton:Landroid/widget/Button;

.field private commentDialogCallbackContract:Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;

.field private commentType:Lcm/aptoide/pt/dataprovider/util/CommentType;

.field private idAsLong:J

.field private idAsString:Ljava/lang/String;

.field private final onEmptyTextError:Ljava/lang/String;

.field private previousCommentId:Ljava/lang/Long;

.field private reply:Z

.field private textInputLayout:Landroid/support/design/widget/TextInputLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/trello/rxlifecycle/b/a;-><init>()V

    .line 57
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->error_MARG_107:I

    invoke-static {v0}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getResString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->onEmptyTextError:Ljava/lang/String;

    .line 58
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 59
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->disableError()V

    return-void
.end method

.method private disableError()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->textInputLayout:Landroid/support/design/widget/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 224
    return-void
.end method

.method private enableError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->textInputLayout:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 235
    return-void
.end method

.method private getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->textInputLayout:Landroid/support/design/widget/TextInputLayout;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->textInputLayout:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$setupLogic$6(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 219
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    return-void
.end method

.method private loadArguments()V
    .locals 4

    .prologue
    .line 163
    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 164
    const-string v1, "app_or_store_name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->appOrStoreName:Ljava/lang/String;

    .line 165
    const-string v1, "comment_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcm/aptoide/pt/dataprovider/util/CommentType;->valueOf(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/util/CommentType;

    move-result-object v1

    iput-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->commentType:Lcm/aptoide/pt/dataprovider/util/CommentType;

    .line 166
    const-string v1, "resource_id_as_string"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->idAsString:Ljava/lang/String;

    .line 167
    const-string v1, "resource_id_as_long"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->idAsLong:J

    .line 169
    const-string v1, "previous_comment_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->reply:Z

    .line 170
    iget-boolean v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->reply:Z

    if-eqz v1, :cond_0

    .line 171
    const-string v1, "previous_comment_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->previousCommentId:Ljava/lang/Long;

    .line 173
    :cond_0
    return-void
.end method

.method public static newInstanceReview(JLjava/lang/String;)Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;
    .locals 4

    .prologue
    .line 79
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 80
    const-string v1, "comment_type"

    sget-object v2, Lcm/aptoide/pt/dataprovider/util/CommentType;->REVIEW:Lcm/aptoide/pt/dataprovider/util/CommentType;

    invoke-virtual {v2}, Lcm/aptoide/pt/dataprovider/util/CommentType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v1, "resource_id_as_long"

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 83
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    const-string v1, "app_or_store_name"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    new-instance v1, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;

    invoke-direct {v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;-><init>()V

    .line 88
    invoke-virtual {v1, v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 89
    return-object v1
.end method

.method public static newInstanceStoreComment(JLjava/lang/String;)Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;
    .locals 4

    .prologue
    .line 93
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 94
    const-string v1, "comment_type"

    sget-object v2, Lcm/aptoide/pt/dataprovider/util/CommentType;->STORE:Lcm/aptoide/pt/dataprovider/util/CommentType;

    invoke-virtual {v2}, Lcm/aptoide/pt/dataprovider/util/CommentType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "resource_id_as_long"

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 97
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    const-string v1, "app_or_store_name"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    new-instance v1, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;

    invoke-direct {v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;-><init>()V

    .line 102
    invoke-virtual {v1, v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 103
    return-object v1
.end method

.method public static newInstanceStoreCommentReply(JJLjava/lang/String;)Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;
    .locals 4

    .prologue
    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    const-string v1, "comment_type"

    sget-object v2, Lcm/aptoide/pt/dataprovider/util/CommentType;->STORE:Lcm/aptoide/pt/dataprovider/util/CommentType;

    invoke-virtual {v2}, Lcm/aptoide/pt/dataprovider/util/CommentType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "resource_id_as_long"

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 67
    const-string v1, "previous_comment_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 69
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    const-string v1, "app_or_store_name"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    new-instance v1, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;

    invoke-direct {v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;-><init>()V

    .line 74
    invoke-virtual {v1, v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 75
    return-object v1
.end method

.method public static newInstanceTimelineArticleComment(Ljava/lang/String;)Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;
    .locals 3

    .prologue
    .line 107
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 108
    const-string v1, "comment_type"

    sget-object v2, Lcm/aptoide/pt/dataprovider/util/CommentType;->TIMELINE:Lcm/aptoide/pt/dataprovider/util/CommentType;

    invoke-virtual {v2}, Lcm/aptoide/pt/dataprovider/util/CommentType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "resource_id_as_string"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v1, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;

    invoke-direct {v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;-><init>()V

    .line 112
    invoke-virtual {v1, v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 113
    return-object v1
.end method

.method public static newInstanceTimelineArticleComment(Ljava/lang/String;J)Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;
    .locals 3

    .prologue
    .line 118
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 119
    const-string v1, "comment_type"

    sget-object v2, Lcm/aptoide/pt/dataprovider/util/CommentType;->TIMELINE:Lcm/aptoide/pt/dataprovider/util/CommentType;

    invoke-virtual {v2}, Lcm/aptoide/pt/dataprovider/util/CommentType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v1, "resource_id_as_string"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v1, "previous_comment_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 123
    new-instance v1, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;

    invoke-direct {v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;-><init>()V

    .line 124
    invoke-virtual {v1, v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 125
    return-object v1
.end method

.method private setupLogic()V
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->textInputLayout:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment$1;

    invoke-direct {v1, p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment$1;-><init>(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 197
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->commentButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;)Lrx/b/e;

    move-result-object v1

    .line 198
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;)Lrx/b/e;

    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;)Lrx/b/e;

    move-result-object v1

    .line 207
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment$$Lambda$6;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    .line 212
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 220
    return-void
.end method

.method private submitComment(Ljava/lang/String;JLjava/lang/Long;Ljava/lang/String;)Lrx/d;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<+",
            "Lcm/aptoide/pt/model/v7/BaseV7Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    sget-object v0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment$2;->$SwitchMap$cm$aptoide$pt$dataprovider$util$CommentType:[I

    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->commentType:Lcm/aptoide/pt/dataprovider/util/CommentType;

    invoke-virtual {v1}, Lcm/aptoide/pt/dataprovider/util/CommentType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 269
    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to create reply due to missing comment type"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    :goto_0
    return-object v0

    .line 242
    :pswitch_0
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 243
    invoke-interface {v1}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-static {p2, p3, p1, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForReview;->of(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForReview;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForReview;->observe()Lrx/d;

    move-result-object v0

    goto :goto_0

    .line 247
    :pswitch_1
    if-nez p4, :cond_0

    .line 248
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 249
    invoke-interface {v1}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-static {p2, p3, p1, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore;->of(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore;->observe()Lrx/d;

    move-result-object v0

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 253
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v0}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v6

    move-wide v0, p2

    move-object v4, p1

    .line 252
    invoke-static/range {v0 .. v6}, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore;->of(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore;->observe()Lrx/d;

    move-result-object v0

    goto :goto_0

    .line 258
    :pswitch_2
    if-nez p4, :cond_1

    .line 260
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v1}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-static {p5, p1, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForTimelineArticle;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForTimelineArticle;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForTimelineArticle;->observe()Lrx/d;

    move-result-object v0

    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 265
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v0}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v6

    move-object v1, p5

    move-object v4, p1

    .line 264
    invoke-static/range {v1 .. v6}, Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForTimelineArticle;->of(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForTimelineArticle;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForTimelineArticle;->observe()Lrx/d;

    move-result-object v0

    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method synthetic lambda$null$3(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 209
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 210
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->error_occured:I

    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/app/Fragment;I)V

    .line 211
    return-void
.end method

.method synthetic lambda$onCreateView$0(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 152
    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->dismiss()V

    return-void
.end method

.method synthetic lambda$setupLogic$1(Ljava/lang/Void;)Lrx/d;
    .locals 1

    .prologue
    .line 198
    invoke-direct {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$setupLogic$2(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 200
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->onEmptyTextError:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->enableError(Ljava/lang/String;)V

    .line 202
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 205
    :goto_0
    return-object v0

    .line 204
    :cond_0
    invoke-direct {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->disableError()V

    .line 205
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic lambda$setupLogic$4(Ljava/lang/String;)Lrx/d;
    .locals 6

    .prologue
    .line 207
    iget-wide v2, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->idAsLong:J

    iget-object v4, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->previousCommentId:Ljava/lang/Long;

    iget-object v5, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->idAsString:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->submitComment(Ljava/lang/String;JLjava/lang/Long;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    .line 208
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;)Lrx/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/b/b;)Lrx/d;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lrx/d;->k()Lrx/d;

    move-result-object v0

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->h:Lcom/trello/rxlifecycle/a/b;

    invoke-virtual {p0, v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->bindUntilEvent(Lcom/trello/rxlifecycle/a/b;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$setupLogic$5(Lcm/aptoide/pt/model/v7/BaseV7Response;)V
    .locals 6

    .prologue
    .line 213
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/BaseV7Response;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->dismiss()V

    .line 215
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->commentDialogCallbackContract:Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;

    iget-wide v2, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->idAsLong:J

    iget-object v4, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->previousCommentId:Ljava/lang/Long;

    iget-object v5, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->idAsString:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->okSelected(Lcm/aptoide/pt/model/v7/BaseV7Response;JLjava/lang/Long;Ljava/lang/String;)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->error_occured:I

    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 131
    invoke-direct {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->loadArguments()V

    .line 133
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->dialog_comment_on_review:I

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 135
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->title:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 136
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    sget-object v1, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment$2;->$SwitchMap$cm$aptoide$pt$dataprovider$util$CommentType:[I

    iget-object v3, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->commentType:Lcm/aptoide/pt/dataprovider/util/CommentType;

    invoke-virtual {v3}, Lcm/aptoide/pt/dataprovider/util/CommentType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 151
    :goto_0
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->cancel_button:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 152
    invoke-static {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->input_layout_title:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->textInputLayout:Landroid/support/design/widget/TextInputLayout;

    .line 155
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->comment_button:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->commentButton:Landroid/widget/Button;

    .line 157
    invoke-direct {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->setupLogic()V

    .line 159
    return-object v2

    .line 140
    :pswitch_0
    sget v1, Lcm/aptoide/pt/v8engine/R$string;->comment:I

    invoke-virtual {p0, v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 143
    :pswitch_1
    sget v1, Lcm/aptoide/pt/v8engine/R$string;->comment:I

    invoke-virtual {p0, v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 146
    :pswitch_2
    sget v1, Lcm/aptoide/pt/v8engine/R$string;->comment_on_store:I

    invoke-virtual {p0, v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->appOrStoreName:Ljava/lang/String;

    .line 147
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->word_this:I

    invoke-virtual {p0, v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    aput-object v1, v4, v5

    .line 146
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->appOrStoreName:Ljava/lang/String;

    goto :goto_1

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCommentDialogCallbackContract(Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->commentDialogCallbackContract:Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;

    .line 275
    return-void
.end method
