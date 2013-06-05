.class public Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardPasswordView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mShowImeAtScreenOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;->mShowImeAtScreenOn:Z

    .line 60
    return-void
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .registers 15
    .parameter "imm"
    .parameter "shouldIncludeAuxiliarySubtypes"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 178
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 181
    .local v1, enabledImis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 183
    .local v2, filteredImisCount:I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 185
    .local v5, imi:Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v10, :cond_1a

    .line 211
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :goto_19
    return v10

    .line 186
    .restart local v5       #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_1a
    invoke-virtual {p1, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 189
    .local v8, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_27

    .line 190
    add-int/lit8 v2, v2, 0x1

    .line 191
    goto :goto_b

    .line 194
    :cond_27
    const/4 v0, 0x0

    .line 195
    .local v0, auxCount:I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2c
    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 196
    .local v7, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_2c

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 200
    .end local v7           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_41
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v6, v11, v0

    .line 205
    .local v6, nonAuxCount:I
    if-gtz v6, :cond_4d

    if-eqz p2, :cond_b

    if-le v0, v10, :cond_b

    .line 206
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    .line 207
    goto :goto_b

    .line 211
    .end local v0           #auxCount:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v6           #nonAuxCount:I
    .end local v8           #subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_50
    if-gt v2, v10, :cond_5d

    const/4 v11, 0x0

    invoke-virtual {p1, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_5e

    :cond_5d
    move v9, v10

    :cond_5e
    move v10, v9

    goto :goto_19
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .registers 2

    .prologue
    .line 69
    const v0, 0x102034b

    return v0
.end method

.method public getWrongPasswordStringId()I
    .registers 2

    .prologue
    .line 223
    const v0, 0x1040863

    return v0
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 101
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 103
    const/4 v1, 0x0

    .line 105
    .local v1, imeOrDeleteButtonVisible:Z
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 108
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 109
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v6, 0x81

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setInputType(I)V

    .line 113
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "clipboardEx"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    .line 114
    .local v0, clipEx:Landroid/sec/clipboard/ClipboardExManager;
    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 115
    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 119
    :cond_3a
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v6, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView$2;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v6, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView$3;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 142
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->requestFocus()Z

    .line 145
    const v5, 0x102034c

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 146
    .local v4, switchImeButton:Landroid/view/View;
    if-eqz v4, :cond_70

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0, v5, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 147
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 148
    const/4 v1, 0x1

    .line 149
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView$4;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    :cond_70
    if-nez v1, :cond_87

    .line 160
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 161
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_87

    move-object v2, v3

    .line 162
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 163
    .local v2, mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 164
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    .end local v2           #mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_87
    return-void
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 95
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->onPause()V

    .line 96
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 97
    return-void
.end method

.method public onResume(I)V
    .registers 6
    .parameter "reason"

    .prologue
    const/4 v2, 0x1

    .line 79
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->onResume(I)V

    .line 80
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 81
    if-ne p1, v2, :cond_f

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;->mShowImeAtScreenOn:Z

    if-eqz v0, :cond_16

    .line 82
    :cond_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 85
    :cond_16
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 91
    return-void
.end method

.method protected resetState()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x1040869

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 65
    return-void
.end method

.method public showUsabilityHint()V
    .registers 1

    .prologue
    .line 219
    return-void
.end method
