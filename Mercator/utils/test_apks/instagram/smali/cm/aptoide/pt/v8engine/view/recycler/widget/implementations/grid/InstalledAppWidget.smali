.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "InstalledAppWidget.java"


# annotations
.annotation runtime Lcm/aptoide/pt/v8engine/view/recycler/widget/Displayables;
    value = {
        Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/InstalledAppDisplayable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/InstalledAppDisplayable;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOCALE:Ljava/util/Locale;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private appName:Ljava/lang/String;

.field private final aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

.field private createReviewLayout:Landroid/view/ViewGroup;

.field private final dialogUtils:Lcm/aptoide/pt/v8engine/util/DialogUtils;

.field private iconImageView:Landroid/widget/ImageView;

.field private installedItemFrame:Landroid/view/View;

.field private labelTextView:Landroid/widget/TextView;

.field private packageName:Ljava/lang/String;

.field private verNameTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->LOCALE:Ljava/util/Locale;

    .line 43
    const-class v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 58
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 59
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 60
    new-instance v0, Lcm/aptoide/pt/v8engine/util/DialogUtils;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/util/DialogUtils;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->dialogUtils:Lcm/aptoide/pt/v8engine/util/DialogUtils;

    .line 61
    return-void
.end method

.method static synthetic lambda$bindView$0(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method static synthetic lambda$showRateDialog$2(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method private showRateDialog()V
    .locals 13

    .prologue
    .line 101
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v6

    .line 102
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$layout;->dialog_rate_app:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 104
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->title:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->rating_bar:I

    .line 106
    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/AppCompatRatingBar;

    .line 107
    sget v2, Lcm/aptoide/pt/v8engine/R$id;->input_layout_title:I

    .line 108
    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TextInputLayout;

    .line 109
    sget v3, Lcm/aptoide/pt/v8engine/R$id;->input_layout_review:I

    .line 110
    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/TextInputLayout;

    .line 111
    sget v4, Lcm/aptoide/pt/v8engine/R$id;->cancel_button:I

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 112
    sget v5, Lcm/aptoide/pt/v8engine/R$id;->rate_button:I

    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 114
    sget-object v8, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->LOCALE:Ljava/util/Locale;

    sget v9, Lcm/aptoide/pt/v8engine/R$string;->rate_app:I

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->appName:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 119
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget$$Lambda$3;->lambdaFactory$(Landroid/app/AlertDialog;)Landroid/view/View$OnClickListener;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-static {p0, v2, v3, v1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;Landroid/support/design/widget/TextInputLayout;Landroid/support/design/widget/TextInputLayout;Landroid/support/v7/widget/AppCompatRatingBar;Landroid/app/AlertDialog;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 155
    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 64
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->labelTextView:Landroid/widget/TextView;

    .line 65
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->iconImageView:Landroid/widget/ImageView;

    .line 66
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->app_version:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->verNameTextView:Landroid/widget/TextView;

    .line 67
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->installedItemFrame:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->installedItemFrame:Landroid/view/View;

    .line 68
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->reviewButtonLayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->createReviewLayout:Landroid/view/ViewGroup;

    .line 69
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/InstalledAppDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/InstalledAppDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/InstalledAppDisplayable;)V
    .locals 4

    .prologue
    .line 72
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/InstalledAppDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Installed;

    .line 74
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Installed;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->appName:Ljava/lang/String;

    .line 75
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Installed;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->packageName:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->labelTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Installed;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->verNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Installed;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    .line 80
    invoke-static {v1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Installed;->getIcon()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->iconImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 82
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->installedItemFrame:Landroid/view/View;

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget$$Lambda$1;->lambdaFactory$()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Installed;->getStoreName()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->createReviewLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 91
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->createReviewLayout:Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->createReviewLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method synthetic lambda$bindView$1(Ljava/lang/String;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 92
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Updates;->createReview()V

    .line 93
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->dialogUtils:Lcm/aptoide/pt/v8engine/util/DialogUtils;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->appName:Ljava/lang/String;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/util/DialogUtils;->showRateDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrx/b/a;)V

    .line 94
    return-void
.end method

.method synthetic lambda$null$3(Lcm/aptoide/pt/model/v7/BaseV7Response;)V
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/BaseV7Response;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->TAG:Ljava/lang/String;

    const-string v1, "review added"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->labelTextView:Landroid/widget/TextView;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->review_success:I

    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;I)V

    .line 143
    const/4 v0, 0x1

    invoke-static {v0}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->setForceServerRefreshFlag(Z)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->labelTextView:Landroid/widget/TextView;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->error_occured:I

    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;I)V

    goto :goto_0
.end method

.method synthetic lambda$null$4(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 148
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 149
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->labelTextView:Landroid/widget/TextView;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->error_occured:I

    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;I)V

    .line 150
    return-void
.end method

.method synthetic lambda$showRateDialog$5(Landroid/support/design/widget/TextInputLayout;Landroid/support/design/widget/TextInputLayout;Landroid/support/v7/widget/AppCompatRatingBar;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 122
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->hideKeyboard(Landroid/app/Activity;)V

    .line 124
    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-virtual {p2}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-virtual {p3}, Landroid/support/v7/widget/AppCompatRatingBar;->getRating()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 128
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->error_MARG_107:I

    invoke-static {v0}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getResString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 151
    :goto_0
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 134
    invoke-virtual {p4}, Landroid/app/AlertDialog;->dismiss()V

    .line 136
    invoke-virtual {p4}, Landroid/app/AlertDialog;->dismiss()V

    .line 137
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->packageName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 138
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v5}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v5

    .line 137
    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;)Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    move-result-object v2

    .line 139
    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest;->execute(Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;)V

    goto :goto_0
.end method
