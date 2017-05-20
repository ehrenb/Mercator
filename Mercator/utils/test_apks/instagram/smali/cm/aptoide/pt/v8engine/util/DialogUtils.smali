.class public Lcm/aptoide/pt/v8engine/util/DialogUtils;
.super Ljava/lang/Object;
.source "DialogUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final LOCALE:Ljava/util/Locale;

.field private final aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcm/aptoide/pt/v8engine/util/DialogUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/util/DialogUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils;->LOCALE:Ljava/util/Locale;

    .line 48
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 49
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 50
    return-void
.end method

.method static synthetic lambda$null$0(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->openAccountManager(Landroid/content/Context;Z)V

    .line 61
    return-void
.end method

.method static synthetic lambda$null$1(Landroid/app/AlertDialog;)V
    .locals 1

    .prologue
    .line 85
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 88
    :cond_0
    return-void
.end method

.method static synthetic lambda$null$10(Landroid/app/Activity;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 214
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 215
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->error_occured:I

    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/app/Activity;I)V

    .line 216
    return-void
.end method

.method static synthetic lambda$null$2(Lrx/j;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->CANCEL:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {p0, v0}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 92
    invoke-virtual {p0}, Lrx/j;->onCompleted()V

    .line 93
    return-void
.end method

.method static synthetic lambda$null$3(Landroid/app/Activity;Lrx/j;Lcm/aptoide/pt/model/v7/BaseV7Response;)V
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/BaseV7Response;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lcm/aptoide/pt/v8engine/util/DialogUtils;->TAG:Ljava/lang/String;

    const-string v1, "review added"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->review_success:I

    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/app/Activity;I)V

    .line 118
    const/4 v0, 0x1

    invoke-static {v0}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->setForceServerRefreshFlag(Z)V

    .line 119
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->YES:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {p1, v0}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 120
    invoke-virtual {p1}, Lrx/j;->onCompleted()V

    .line 126
    :goto_0
    return-void

    .line 122
    :cond_0
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->error_occured:I

    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/app/Activity;I)V

    .line 123
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->CANCEL:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {p1, v0}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 124
    invoke-virtual {p1}, Lrx/j;->onCompleted()V

    goto :goto_0
.end method

.method static synthetic lambda$null$4(Landroid/app/Activity;Lrx/j;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 130
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 131
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->error_occured:I

    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/app/Activity;I)V

    .line 132
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->CANCEL:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {p1, v0}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 133
    invoke-virtual {p1}, Lrx/j;->onCompleted()V

    .line 134
    return-void
.end method

.method static synthetic lambda$null$9(Landroid/app/Activity;Lrx/b/a;Lcm/aptoide/pt/model/v7/BaseV7Response;)V
    .locals 2

    .prologue
    .line 201
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/BaseV7Response;->isOk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    sget-object v0, Lcm/aptoide/pt/v8engine/util/DialogUtils;->TAG:Ljava/lang/String;

    const-string v1, "review added"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->review_success:I

    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/app/Activity;I)V

    .line 204
    const/4 v0, 0x1

    invoke-static {v0}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->setForceServerRefreshFlag(Z)V

    .line 205
    if-eqz p1, :cond_0

    .line 206
    invoke-interface {p1}, Lrx/b/a;->call()V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->error_occured:I

    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method static synthetic lambda$showRateDialog$7(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->openAccountManager(Landroid/content/Context;Z)V

    .line 161
    return-void
.end method

.method static synthetic lambda$showRateDialog$8(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method synthetic lambda$null$5(Landroid/app/Activity;Landroid/support/design/widget/TextInputLayout;Landroid/support/design/widget/TextInputLayout;Landroid/support/v7/widget/AppCompatRatingBar;Lrx/j;Landroid/app/AlertDialog;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 9

    .prologue
    .line 97
    invoke-static {p1}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->hideKeyboard(Landroid/app/Activity;)V

    .line 99
    invoke-virtual {p2}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-virtual {p3}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-virtual {p4}, Landroid/support/v7/widget/AppCompatRatingBar;->getRating()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 103
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->error_MARG_107:I

    invoke-static {v0}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getResString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 105
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->CANCEL:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {p5, v0}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 106
    invoke-virtual {p5}, Lrx/j;->onCompleted()V

    .line 146
    :goto_0
    return-void

    .line 110
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 111
    invoke-virtual {p6}, Landroid/app/AlertDialog;->dismiss()V

    .line 114
    invoke-static {p1, p5}, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$11;->lambdaFactory$(Landroid/app/Activity;Lrx/j;)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;

    move-result-object v7

    .line 129
    invoke-static {p1, p5}, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$12;->lambdaFactory$(Landroid/app/Activity;Lrx/j;)Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    move-result-object v8

    .line 137
    if-eqz p7, :cond_1

    .line 138
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 139
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v0}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    .line 138
    invoke-static/range {v0 .. v6}, Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest;

    move-result-object v0

    .line 140
    invoke-virtual {v0, v7, v8}, Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest;->execute(Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;)V

    goto :goto_0

    .line 142
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 143
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v0}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p8

    .line 142
    invoke-static/range {v1 .. v6}, Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest;

    move-result-object v0

    .line 144
    invoke-virtual {v0, v7, v8}, Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest;->execute(Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;)V

    goto :goto_0
.end method

.method synthetic lambda$showRateDialog$11(Landroid/app/Activity;Landroid/support/design/widget/TextInputLayout;Landroid/support/design/widget/TextInputLayout;Landroid/support/v7/widget/AppCompatRatingBar;Landroid/app/AlertDialog;Lrx/b/a;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 9

    .prologue
    .line 186
    invoke-static {p1}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->hideKeyboard(Landroid/app/Activity;)V

    .line 188
    invoke-virtual {p2}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-virtual {p3}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 190
    invoke-virtual {p4}, Landroid/support/v7/widget/AppCompatRatingBar;->getRating()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 192
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->error_MARG_107:I

    invoke-static {v0}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getResString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 227
    :goto_0
    return-void

    .line 197
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 198
    invoke-virtual {p5}, Landroid/app/AlertDialog;->dismiss()V

    .line 200
    invoke-static {p1, p6}, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$5;->lambdaFactory$(Landroid/app/Activity;Lrx/b/a;)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;

    move-result-object v7

    .line 213
    invoke-static {p1}, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$6;->lambdaFactory$(Landroid/app/Activity;)Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    move-result-object v8

    .line 218
    if-eqz p7, :cond_1

    .line 219
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 220
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v0}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    .line 219
    invoke-static/range {v0 .. v6}, Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest;

    move-result-object v0

    .line 221
    invoke-virtual {v0, v7, v8}, Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest;->execute(Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;)V

    goto :goto_0

    .line 223
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 224
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v0}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p8

    .line 223
    invoke-static/range {v1 .. v6}, Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest;

    move-result-object v0

    .line 225
    invoke-virtual {v0, v7, v8}, Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest;->execute(Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;)V

    goto :goto_0
.end method

.method synthetic lambda$showRateDialog$6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrx/j;)V
    .locals 12

    .prologue
    .line 57
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->isLoggedIn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    sget v1, Lcm/aptoide/pt/v8engine/R$string;->you_need_to_be_logged_in:I

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->login:I

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$7;->lambdaFactory$(Landroid/app/Activity;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/app/Activity;IILandroid/view/View$OnClickListener;)V

    .line 62
    sget-object v1, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->CANCEL:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 63
    invoke-virtual/range {p5 .. p5}, Lrx/j;->onCompleted()V

    .line 150
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$layout;->dialog_rate_app:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 69
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->title:I

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 70
    sget v2, Lcm/aptoide/pt/v8engine/R$id;->rating_bar:I

    .line 71
    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/AppCompatRatingBar;

    .line 72
    sget v2, Lcm/aptoide/pt/v8engine/R$id;->input_layout_title:I

    .line 73
    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/TextInputLayout;

    .line 74
    sget v2, Lcm/aptoide/pt/v8engine/R$id;->input_layout_review:I

    .line 75
    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/TextInputLayout;

    .line 76
    sget v2, Lcm/aptoide/pt/v8engine/R$id;->cancel_button:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 77
    sget v6, Lcm/aptoide/pt/v8engine/R$id;->rate_button:I

    invoke-virtual {v7, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Landroid/widget/Button;

    .line 79
    iget-object v6, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils;->LOCALE:Ljava/util/Locale;

    sget v8, Lcm/aptoide/pt/v8engine/R$string;->rate_app:I

    invoke-virtual {p1, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p2, v9, v11

    invoke-static {v6, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 84
    invoke-static {v7}, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$8;->lambdaFactory$(Landroid/app/AlertDialog;)Lrx/b/a;

    move-result-object v1

    invoke-static {v1}, Lrx/j/e;->a(Lrx/b/a;)Lrx/k;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Lrx/j;->add(Lrx/k;)V

    .line 90
    invoke-static/range {p5 .. p5}, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$9;->lambdaFactory$(Lrx/j;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v6, p5

    move-object v8, p3

    move-object/from16 v9, p4

    .line 95
    invoke-static/range {v1 .. v9}, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$10;->lambdaFactory$(Lcm/aptoide/pt/v8engine/util/DialogUtils;Landroid/app/Activity;Landroid/support/design/widget/TextInputLayout;Landroid/support/design/widget/TextInputLayout;Landroid/support/v7/widget/AppCompatRatingBar;Lrx/j;Landroid/app/AlertDialog;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public showRateDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/utils/GenericDialogs$EResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {p0, p1, p2, p4, p3}, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/util/DialogUtils;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/d$a;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public showRateDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrx/b/a;)V
    .locals 11

    .prologue
    .line 157
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->you_need_to_be_logged_in:I

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->login:I

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$2;->lambdaFactory$(Landroid/app/Activity;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/app/Activity;IILandroid/view/View$OnClickListener;)V

    .line 231
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$layout;->dialog_rate_app:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 168
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->title:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 169
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->rating_bar:I

    .line 170
    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/AppCompatRatingBar;

    .line 171
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->input_layout_title:I

    .line 172
    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TextInputLayout;

    .line 173
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->input_layout_review:I

    .line 174
    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/TextInputLayout;

    .line 175
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->cancel_button:I

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 176
    sget v5, Lcm/aptoide/pt/v8engine/R$id;->rate_button:I

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Landroid/widget/Button;

    .line 178
    iget-object v5, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils;->LOCALE:Ljava/util/Locale;

    sget v7, Lcm/aptoide/pt/v8engine/R$string;->rate_app:I

    invoke-virtual {p1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v8, v10

    invoke-static {v5, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 183
    invoke-static {v5}, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$3;->lambdaFactory$(Landroid/app/AlertDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v6, p5

    move-object v7, p4

    move-object v8, p3

    .line 184
    invoke-static/range {v0 .. v8}, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/util/DialogUtils;Landroid/app/Activity;Landroid/support/design/widget/TextInputLayout;Landroid/support/design/widget/TextInputLayout;Landroid/support/v7/widget/AppCompatRatingBar;Landroid/app/AlertDialog;Lrx/b/a;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
